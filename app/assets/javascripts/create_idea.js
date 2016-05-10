$(document).ready(function() {


  $("#ajax-create-idea").on('submit', function() {
    event.preventDefault();
    var formData = $(this).serialize();
    console.log(formData);
    $("#ajax-create-idea").trigger('reset');
  });

});

//
//
// $(createForm).submit(function(event) {
//   event.preventDefault();
// })
