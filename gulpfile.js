var gulp = require('gulp');
var browserify = require('gulp-browserify');
var concat = require('gulp-concat');
var less = require('gulp-less');
var refresh = require('gulp-livereload');
var lr = require('tiny-lr');
var server = lr();
var minifyCSS = require('gulp-minify-css');
var embedlr = require('gulp-embedlr');
var sass = require('gulp-sass');
var browserSync = require('browser-sync').create();
//style paths
var sassFiles = 'app/assets/styles/sass/**/*.scss',  
    cssDest = 'app/assets/styles/css/';

gulp.task('styles', function(){  
    gulp.src(sassFiles)
        .pipe(sass().on('error', sass.logError))
        .pipe(minifyCSS())
        .pipe(gulp.dest(cssDest))
        
});

gulp.task('scripts', function() {
    gulp.src(['app/src/**/*.js'])
        .pipe(browserify())
        .pipe(concat('dest.js'))
        .pipe(gulp.dest('dist/build'))
        .pipe(refresh(server))
})

gulp.task('serve',['styles'], function() {

    browserSync.init({
        proxy: "http://local.store.com:8080/app",
        files: ['app/views/**/*.cfm']
    });

    gulp.watch(sassFiles, ['styles']).on('change', browserSync.reload);
    gulp.watch("app/**/*.cfm").on('change', browserSync.reload);
});

// Compile sass into CSS & auto-inject into browsers

// gulp.task('styles', function() {
//     gulp.src(['app/assets/styles/style.less'])
//         .pipe(less())
//         .pipe(minifyCSS())
//         .pipe(gulp.dest('dist/build'))
//         .pipe(refresh(server))
// })

gulp.task('lr-server', function() {
    server.listen(35729, function(err) {
        if(err) return console.log(err);
    });
})

gulp.task('html', function() {
    gulp.src("app/*.cfm")
        .pipe(embedlr())
        .pipe(gulp.dest('dist/'))
        .pipe(refresh(server));
})

gulp.task('default', ['serve'])