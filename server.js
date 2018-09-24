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
app.get('/book/newbook', (req, res) => {
  res.render('new');
});
app.get('/book', books.getBooks);

app.get('/book/:id', books.getOneBook);
app.post('/book', books.createBook);

app.get('/error', (req, res) => {
  res.render('pages/error', {
    error: 404, 
    url: 'SORRY, BAD URL '
    });
});

app.get('*', (req, res) => {
  res.redirect('/error');
});

app.listen(PORT, () => {
  console.log(`listening on port ${PORT}!`)
});