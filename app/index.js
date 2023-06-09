const express = require('express');
const cors = require('cors');
const userRoutes = require('./routes/userRoutes');

const app = express();
const port = 3000;

app.use(cors());
app.use(express.json());

app.use('/user', userRoutes);

app.listen(port, () => {
  console.log(`App listening at http://localhost:${port}`);
});