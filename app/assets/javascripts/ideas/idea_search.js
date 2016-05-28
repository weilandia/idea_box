$(document).ready(function() {
  $("#idea-search").on("keyup", function() {
    ideaSearch($(this).val());
  });

  var searchIdea = function(query, entries) {
    return entries.map(function(entry){
      if (entry.indexOf(query.toLowerCase()) === -1) {
        return false;
      } else {
        return true;
      }
    });
  };

  var ideaSearch = function(query) {
    $(".idea").each(function() {
        $(this).show();
        var title = $(this).find(".title").text().toLowerCase();
        var body = $(this).find(".body").text().toLowerCase();
        var match = searchIdea(query, [title, body]);
        if (match.indexOf(true) === -1) {
          $(this).toggle();
      }
    });
  };
});
