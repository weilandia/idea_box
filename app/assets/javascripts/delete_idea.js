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
