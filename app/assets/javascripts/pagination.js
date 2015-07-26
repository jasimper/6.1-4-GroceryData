$(function() {
  $(".link_list a").on("click", function() {
    $.get(this.href, null, null, "script");
    return false;
  });
});
