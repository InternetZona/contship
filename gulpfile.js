const gulp = require('gulp'),
    autoprefixer = require('gulp-autoprefixer'),
    compass = require('gulp-compass'),
    uglify = require('gulp-uglify'),
    rename = require('gulp-rename'),
    concat = require('gulp-concat'),
    notify = require('gulp-notify'),
    del = require('del'),
    cache = require('gulp-cache'),
    rigger = require('gulp-rigger'),
    cleancss = require('gulp-clean-css'),
    path = require('path'),
    sourcemaps = require('gulp-sourcemaps');

const settings = {
    src: {
        css: 'src/_css',
        scss: 'src/scss',
        js: 'src/js',
    },
    prod: {
        css: 'assets/components/modxsite/templates/default/css/',
        js: 'assets/components/modxsite/templates/default/js/'
    }
};

gulp.task('style', function() {
    return gulp.src(settings.src.scss + '/style.scss')
        .pipe(sourcemaps.init())
        .pipe(compass({
            project: path.join(__dirname),
            css: settings.src.css,
            sass: settings.src.scss
        }))
        .pipe(autoprefixer({
            browsers: ['last 2 versions'],
            cascade: false
        }))
        .pipe(cleancss())
        .pipe(sourcemaps.write())
        .pipe(rename({
            suffix: '.min'
        }))
        .pipe(gulp.dest(settings.prod.css))
        .pipe(notify({
            message: 'Styles task complete'
        }));
});

gulp.task('scripts', function() {
    gulp.src(settings.src.js + '/scripts.js')
        .pipe(rigger())
        .pipe(sourcemaps.init())
        .pipe(uglify())
        .pipe(rename({
            suffix: '.min'
        }))
        .pipe(sourcemaps.write())
        .pipe(gulp.dest(settings.prod.js))
        .pipe(notify({
            message: 'Scripts task complete'
        }));
});

gulp.task('watch', function(){
    gulp.watch('src/scss/**/*.scss', ['style']);
    gulp.watch('src/js/**/*.js', ['scripts']);
});

gulp.task('default', function() {

});
