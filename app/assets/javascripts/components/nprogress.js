//= require nprogress
// jshint strict:false

$(document).on('page:fetch',    function() { NProgress.start();  });
$(document).on('page:change',   function() { NProgress.done();   });
$(document).on('page:restore',  function() { NProgress.remove(); });
