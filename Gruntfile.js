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
                    precision: 11
                },
                files : {
                    'dist/rio.css' : 'sass/build/rio.scss'
                }
            }
        },
        cssmin : {
            dist : {
                files : {
                    'dist/rio.min.css' : 'dist/rio.css'
                }
            }
        },
        copy : {
            dist : {
                files: [
                    {
                        expand: true,
                        cwd: 'dist/',
                        src: ['**'],
                        dest: 'doc/css/'
                    }
                ]
            }
        },
        watch : {
            sass : {
                files : 'sass/**/*.scss',
                tasks : ['sass', 'cssmin', 'copy']
            }
        }
    });

    grunt.loadNpmTasks('grunt-contrib-sass');
    grunt.loadNpmTasks('grunt-contrib-cssmin');
    grunt.loadNpmTasks('grunt-contrib-watch');
    grunt.loadNpmTasks('grunt-contrib-copy');

    grunt.registerTask('default', ['sass', 'cssmin', 'copy']);
};
