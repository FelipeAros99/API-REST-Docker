const express = require('express');
const {
  getUser,
  getUsers,
  addUser,
  editUser,
  deleteUser,
} = require('../controllers/userController');

const router = express.Router();

router.get('/:id', getUser);
router.get('/', getUsers);
router.post('/', addUser);
router.put('/:id', editUser);
router.delete('/:id', deleteUser);

module.exports = router;