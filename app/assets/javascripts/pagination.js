$(function() {
  $(".link_list").delegate("a", "click", function() {
    $.get(this.href, null, null, "script");
    return false;
  });
});
