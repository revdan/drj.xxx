$(document).on('page:fetch', function() {
  return $('#content').fadeOut('fast');
});

$(document).on('page:restore', function() {
  return $('#content').fadeIn('fast');
});
