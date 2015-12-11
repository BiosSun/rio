gulp = require 'gulp'
sass = require 'gulp-sass'
minifyCss = require 'gulp-minify-css'
rename = require 'gulp-rename'
autoprefixer = require 'gulp-autoprefixer'

gulp.task 'sass', ->
    options = {
        outputStyle: 'expanded',
        precision: 11
    }

    gulp.src './sass/build/rio.scss'
        .pipe sass options
        .pipe autoprefixer {
            browsers: [ 'last 7 versions', '> 1%', 'Android >= 4.0', 'iOS >= 6' ]
        }
        .pipe gulp.dest './dist'

        # Minify CSS
        # ---------------------------
        .pipe minifyCss {
            advanced: false,
            aggressiveMerging: false,
            compatibility: 'ie7',
            keepSpecialComments: 1
        }
        .pipe rename { suffix: '.min' }
        .pipe gulp.dest './dist'

gulp.task 'copy', ['sass'], ->
    gulp.src './dist/*', { base: './dist/' }
        .pipe gulp.dest './doc/css/'

gulp.task 'default', ['sass', 'copy']
