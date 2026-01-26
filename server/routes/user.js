const express = require('express');
const router = express.Router();
const userController = require('../controllers/userController');

// create, find, update, delete
// Route trang chủ mới
router.get('/', (req, res) => {
    res.render('home');  // Render trang chủ mới
});
router.get('/view', userController.view);
router.post('/search', userController.find);
router.get('/adduser', userController.form);
router.post('/adduser', userController.create);
router.get('/edituser/:id', userController.edit);
router.post('/edituser/:id', userController.update);
router.get('/:id', userController.delete);
router.get('/viewuser/:id', userController.viewall);

module.exports = router;