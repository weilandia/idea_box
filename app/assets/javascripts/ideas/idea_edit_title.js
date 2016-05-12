$(document).ready(function() {
  var editTitle = function($node) {
    var $ideaToUpdate = $($node).closest("div.idea").attr("id")
    $.ajax({
      type: "PUT",
      url: "/api/ideas",
      data: { id: $ideaToUpdate, title: $($node).val()},
    })

    $($node).replaceWith("<span class='title pointer'>" + $($node).val() + "</span>");
  }

  $(document).on('click', '.title', function() {
    $(this).replaceWith("<input id='edit-title' class='edit edit-title' value=" + $(this).text() + " size='" + $(this).text().length + "' maxlength='35'></input>")
    $(this).focus()
  });

  $(document).on('blur', '.edit-title', function() {
    editTitle(this);
  });

  $(document).on('keyup', '.edit-title', function() {
    $(this).attr('size', $(this).val().length - 1);
  });
});
