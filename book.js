'use strict';

const pg = require('pg');
const conString = process.env.DATABASE_URL;
const client = new pg.Client(conString);
client.connect();
client.on('error', error => {
  console.error(error);
});

//helper functions go here
function getBooks(req, res) {
  client.query('SELECT * FROM books;')
    .then (result => {
      res.render('index', {
        bookTitle: 'something goes here',
        books: result.rows
      });
    });
}

function getOneBook (req, res){
  let SQL = 'SELECT * FROM books WHERE id = $1';
  let values = [ req.params.id ];
  client.query(SQL, values, (err, result) => {
    if (err) {
      console.error(err);
      res.redirect('error');
    } else {
      res.render ('pages/show', {book: result.rows[0]});
    }
  })
}

const createBook = (req, res) => {
  console.log('got a book');
  let SQL = 'INSERT INTO books (author, title, isbn, image_url, description) VALUES ($1, $2, $3, $4, $5) RETURNING id;';
  let values = [
    req.body.author,
    req.body.title,
    req.body.isbn,
    req.body.image_url,
    req.body.description
  ];

  client.query(SQL, values, (err, result) => {
    console.log(result.rows[0].id);
    res.redirect(`/book/${result.rows[0].id}`);
  });
}

module.exports = {
  getBooks: getBooks,
  getOneBook: getOneBook,
  createBook: createBook
};