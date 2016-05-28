$(document).ready(function(){
  $(document).on('click', '.delete-idea', function() {
    var $ideaToDelete = $(this).closest("div.idea");
    $ideaToDelete.remove();
    $.ajax({
      type: "DELETE",
      url: "/api/ideas",
      data: { id: $ideaToDelete.attr("id") },
    });
  });
});
