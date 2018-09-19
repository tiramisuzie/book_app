'use strict';

const express = require('express');
const ejs = require('ejs');
require('dotenv').config();

const PORT = process.env.PORT;
const app = express();

const books = require('./book');

app.use(express.json());
app.use(express.urlencoded({extended: true}));
app.use(express.static('./public'));

app.set('view engine', 'ejs');

app.get('/', (req, res) => res.redirect('/book'));
app.get('/book', books.getBooks);

app.get('/book/:id', books.getOneBook);

app.listen(PORT, () => {
  console.log(`listening on port ${PORT}!`)
});