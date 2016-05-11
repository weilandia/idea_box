$(document).ready(function() {
  $("#ajax-create-idea").on('submit', function() {
    event.preventDefault();
    var $formData = $(this).serializeArray();
    $(".ideas").prepend(ideaDiv($formData));
    $.post('api/ideas', $formData, function(response) {
      $(".ideas").children().first().attr("data-idea", JSON.parse(response)._id.$oid);
    });

    $("#ajax-create-idea").trigger('reset');
  });
});
