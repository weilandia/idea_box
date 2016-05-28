$(document).ready(function() {
  $(document).on('click', '.downvote', function() {
    var $ideaToUpdate = $(this).closest("div.idea");

    var findDownvoteQuality = function(idea) {
      var currentQuality = ideaQualities.indexOf(idea);
      if (currentQuality > 0) {
        return ideaQualities[currentQuality - 1];
      }
    };

    //why is this not scoping properly?
    var ideaFilter = function(filter) {
      $(".idea").each(function() {
        $(this).show();
        if (filter === "all") return;
        var quality = $(this).attr('data-quality');
        if (quality != filter) {
          $(this).toggle();
        }
      });
    };

    var checkFilter = function(filter) {
      if ($(".active-filter").val() != "all") {
        ideaFilter(filter);
      }
    };

    var downvoteQuality = function(idea) {
      var oldQuality = idea.attr("data-quality");
      var newQuality = findDownvoteQuality(oldQuality);
      if (newQuality != ideaQualities[-1]) {
        idea.find(".quality").text("(" + newQuality + ")");

        idea.attr("data-quality", newQuality);
        checkFilter(oldQuality);

        $.ajax({
          type: "PUT",
          url: "/api/ideas",
          data: { id: idea.attr("id"), quality: newQuality }
        });
      }
    }($ideaToUpdate);
  });
});
