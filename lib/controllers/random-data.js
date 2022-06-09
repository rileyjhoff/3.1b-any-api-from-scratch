const { Router } = require('express');
const RandomData = require('../models/RandomData');

module.exports = Router()
  .get('/:id', async (req, res) => {
    const id = req.params.id;
    const item = await RandomData.getById(id);
    res.json(item);
  })
  .get('/', async (req, res) => {
    const allData = await RandomData.getAll();
    res.json(allData);
  });
