$(document).ready(function() {
  $(document).on('keydown', '.edit', function(key) {
    if (key.which == 13) {
      key.preventDefault();
      $(this).blur();
    }
  });
});
