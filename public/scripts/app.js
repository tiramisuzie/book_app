'use strict';
$('.hamburger').on('click', () => {
  $('.main-nav').show();
  $('.hamburger').hide();
  $('header').css('flex-direction', 'column');
});

$('.logo').on('click', () => {
  $('.main-nav').hide();
  $('.hamburger').show();
  $('header').css('flex-direction', 'row');
});