var gulp = require('gulp');
var sass = require('gulp-sass')(require('sass'));
var browserSync = require('browser-sync').create();

gulp.task('browserSync', async function() {
  browserSync.init({
    server: {
      baseDir: 'app'
    },
  })
})

gulp.task('sass', async function() {
  return gulp.src('app/scss/**/*.scss')
    .pipe(sass())
    .pipe(gulp.dest('app/css'))
    .pipe(browserSync.reload({
      stream: true
    }))
});

gulp.task('watch', gulp.series('browserSync', 'sass', async function (){
  gulp.watch('app/scss/**/*.scss', gulp.series('sass')); 
  gulp.watch('app/*.html').on('change', browserSync.reload); 
  gulp.watch('app/js/**/*.js').on('change', browserSync.reload);  
  gulp.watch('app/css/**/*.css').on('change', browserSync.reload); 
}));