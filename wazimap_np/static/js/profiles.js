/** Source: wazimap-za*/

$('.floating-nav').affix({
    offset: {
      top: $('.floating-nav').offset().top,
    },
  });
  
  $('a[href^="#"]').on('click', function(e) {
    e.preventDefault();
    var target = this.hash;
    var $target = $(target);
  
    if ($target.length) {
      window.scroll(0, $target.offset().top - 90);
      if ('pushState' in window.history) window.history.pushState({}, null, target);
    }
  });
  