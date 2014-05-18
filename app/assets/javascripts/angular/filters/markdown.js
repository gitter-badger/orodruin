//= require marked
/* globals Orodruin, marked */

Orodruin.filter('markdown', function() {
  'use strict';

  return function(input, santize) {
    return marked(input, {
      gfm:          true,
      tables:       true,
      breaks:       true,
      santize:      santize,
      smartypants:  true
    });
  };
});
