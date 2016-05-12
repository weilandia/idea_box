$(document).ready(function() {
  var editBody = function($node) {
    var $ideaToUpdate = $($node).closest("div.idea").attr("id")
    $.ajax({
      type: "PUT",
      url: "/api/ideas",
      data: { id: $ideaToUpdate, body: $($node).val()},
    })

    $($node).replaceWith("<p class='body pointer'>" + $($node).val() + "</p>");
  }

  $(document).on('click', '.body', function() {
    debugger;
    $(this).replaceWith("<textarea id='edit-body' class='edit edit-body'>" + $(this).text() + "</textarea>")
    $(this).focus()
  });

  $(document).on('blur', '.edit-body', function() {
    editBody(this);
  });
});
