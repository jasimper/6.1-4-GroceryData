$(function() {
  $("#groceries").on("click", "a", function(event) {
    event.preventDefault();
    $.get(this.href, null, null, "script");
  });
});
