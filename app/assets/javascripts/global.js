var ideaDiv = function(idea) {
  return '<div class="idea"><div class="row idea-header"><div class="col-xs-12"><span class="delete-idea pointer">x</span><div class="float-right row"><div class="col-xs-12 upvote-div"><div class="upvote pointer">+</div></div></div><br><div class="float-right row"><div class="col-xs-12 downvote-div"><div class="downvote pointer">-</div></div></div><br><span class="title pointer">' + idea[0].value + '</span><span class="quality light">(maybe)</span></div></div><div class="row"><div class="col-xs-12"><p class="body pointer">' + idea[1].value + '</p></div></div></div></div>'
}

var ideaQualities = ["maybe", "yes", "now"]
