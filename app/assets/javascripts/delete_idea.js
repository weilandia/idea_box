$(document).ready(function(){
  $(".delete-idea").on('click', function() {
    var $ideaToDelete = $(this).closest("div.idea")
    $ideaToDelete.remove()
    $.ajax({
      type: "DELETE",
      url: "/api/ideas",
      data: { id: $ideaToDelete.data("idea") },
    })
  });
});


// $("#ajax-create-idea").on('submit', function() {
//   event.preventDefault();
//   var formData = $(this).serializeArray();
//   $(".ideas").prepend(ideaDiv(formData));
//   $.post('api/ideas', formData, function(response) {
//     console.log(response);
//   });
//   $("#ajax-create-idea").trigger('reset');
// });
