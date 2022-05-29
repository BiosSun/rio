gulp = require 'gulp'
sass = require('gulp-sass') require 'sass'
cleanCss = require 'gulp-clean-css'
rename = require 'gulp-rename'
autoprefixer = require 'gulp-autoprefixer'

gulp.task 'sass', ->
    options = {
        outputStyle: 'expanded',
        precision: 11
    }

    gulp.src './sass/build/rio.scss'
        .pipe sass options
        .pipe autoprefixer()
        .pipe gulp.dest './dist'

        # Clean CSS
        # ---------------------------
        .pipe cleanCss {
            compatibility: 'ie7',
        }
        .pipe rename { suffix: '.min' }
        .pipe gulp.dest './dist'

gulp.task 'copy', ->
    gulp.src './dist/*', { base: './dist/' }
        .pipe gulp.dest './doc/css/'

gulp.task 'default', gulp.series('sass', 'copy')
