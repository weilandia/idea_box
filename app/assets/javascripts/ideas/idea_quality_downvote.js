$(document).ready(function() {
  $(document).on('click', '.downvote', function() {
    var $ideaToUpdate = $(this).closest("div.idea")

    var findDownvoteQuality = function(idea) {
      var currentQuality = ideaQualities.indexOf(idea);
      if (currentQuality > 0) {
        return ideaQualities[currentQuality - 1]
      }
    };

    var downvoteQuality = function(idea) {
      var newQuality = findDownvoteQuality(idea.attr("data-quality"));
      if (newQuality != ideaQualities[-1]) {
        idea.find(".quality").text("(" + newQuality + ")");
        idea.attr("data-quality", newQuality);

        $.ajax({
          type: "PUT",
          url: "/api/ideas",
          data: { id: idea.attr("id"), quality: newQuality }
        });
      }
    }($ideaToUpdate);
  });
});
