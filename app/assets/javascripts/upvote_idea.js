$(document).ready(function() {
  $(document).on('click', '.upvote', function() {
    var $ideaToUpdate = $(this).closest("div.idea")

    var findUpvoteQuality = function(idea) {
      var currentQuality = ideaQualities.indexOf(idea);
      if (currentQuality < 2) {
        return ideaQualities[currentQuality + 1]
      }
    };

    var upvoteQuality = function(idea) {
      var newQuality = findUpvoteQuality(idea.attr("data-quality"));
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
