module.exports = function(grunt) {

    grunt.initConfig({
        pkg : grunt.file.readJSON('package.json'),
        sass : {
            dist : {
                options: {
                    // sourcemap: true,
                    // lineNumbers: true,
                    unixNewlines: true,
                    style: 'expanded',
                    precision: 10
                },
                files : {
                    'dist/rio.css' : 'src/build/rio.scss'
                }
            }
        },
        cssmin : {
            nami : {
                files : {
                    'dist/rio.min.css' : 'dist/rio.css'
                }
            }
        },
        watch : {
            sass : {
                files : 'src/**/*.scss',
                tasks : ['sass', 'cssmin']
            }
        }
    });

    grunt.loadNpmTasks('grunt-contrib-sass');
    grunt.loadNpmTasks('grunt-contrib-cssmin');
    grunt.loadNpmTasks('grunt-contrib-watch');

    grunt.registerTask('default', ['sass', 'cssmin']);
};
