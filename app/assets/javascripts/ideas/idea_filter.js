$(document).ready(function() {
  $(".active-filter").toggle();

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

  $(document).on('click','.filter-button',function() {
    $(".active-filter").toggle().removeClass("active-filter");

    $(this).addClass("active-filter").toggle();

    ideaFilter($(this).val());
  });
});
