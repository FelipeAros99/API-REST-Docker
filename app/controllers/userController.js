const mysql = require('mysql');
const { hash } = require('../utils/hash');

// Configura la conexión a la base de datos MySQL
const connection = mysql.createConnection({
  host: process.env.MYSQL_HOST,
  user: 'root',
  password: "root",
  database: 'tienda',
});

// Obtiene un usuario por ID
const getUser = (req, res) => {
  const userId = req.params.id;
  console.log("parametroid desde getuser "+req.params.id)
  const query = 'SELECT * FROM user WHERE Us_id = ?';

  connection.query(query, [userId], (error, results) => {
    if (error) {
      console.error('Error querying database:', error);
      res.status(500).json({ error: 'Internal Server Error' });
    } else {
      if (results.length === 0) {
        res.status(404).json({ error: 'User not found' });
      } else {
        res.json(results[0]);
      }
    }
  });
};

// Obtiene todos los usuarios
const getUsers = (req, res) => {
  const query = 'SELECT * FROM user';

  connection.query(query, (error, results) => {
    if (error) {
      console.error('Error querying database:', error);
      res.status(500).json({ error: 'Internal Server Error' });
    } else {
      res.json(results);
    }
  });
};

// Agrega un nuevo usuario
const addUser = (req, res) => {
  const { name, email, password } = req.body;
  const hashedPassword = hash(password);
  const query = 'INSERT INTO user (Us_name, Us_email, Us_pass) VALUES (?, ?, ?)';

  connection.query(query, [name, email, hashedPassword], (error, results) => {
    if (error) {
      console.error('Error inserting into database:', error);
      res.status(500).json({ error: 'Internal Server Error' });
    } else {
      res.sendStatus(201);
    }
  });
};

// Edita un usuario existente
const editUser = (req, res) => {
  const userId = req.params.id;
  const { name, email, password } = req.body;
  const hashedPassword = hash(password);
  const query = 'UPDATE user SET Us_name = ?, Us_email = ?, Us_pass = ? WHERE Us_id = ?';

  connection.query(query, [name, email, hashedPassword, userId], (error, results) => {
    if (error) {
      console.error('Error updating database:', error);
      res.status(500).json({ error: 'Internal Server Error' });
    } else {
      if (results.affectedRows === 0) {
        res.status(404).json({ error: 'User not found' });
      } else {
        res.sendStatus(204);
      }
    }
  });
};

// Elimina un usuario
const deleteUser = (req, res) => {
  const userId = req.params.id;
  const query = 'DELETE FROM user WHERE Us_id = ?';

  connection.query(query, [userId], (error, results) => {
    if (error) {
      console.error('Error deleting from database:', error);
      res.status(500).json({ error: 'Internal Server Error' });
    } else {
      if (results.affectedRows === 0) {
        res.status(404).json({ error: 'User not found' });
      } else {
        res.sendStatus(204);
      }
    }
  });
};

module.exports = {
  getUser,
  getUsers,
  addUser,
  editUser,
  deleteUser,
};