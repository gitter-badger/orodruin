var
gulp   = require('gulp'),
jshint = require('gulp-jshint');

gulp.task('style-check', function() {
  gulp.src('app/assets/javascripts/**/*.js')
    .pipe(jshint())
    .pipe(jshint.reporter('jshint-stylish'));
});

gulp.task('default', ['style-check']);
