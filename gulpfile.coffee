gulp = require 'gulp'
$ = do require 'gulp-load-plugins'

gulp.task 'default', ['manifest', 'script']

gulp.task 'watch', ->
  gulp.watch './src/manifest.yaml', ['manifest']
  gulp.watch './src/**.coffee', ['script']

gulp.task 'manifest', ->
  gulp.src './src/manifest.yaml'
    .pipe do $.yaml
    .pipe gulp.dest './dest'

gulp.task 'script', ->
  gulp.src './src/**.coffee'
    .pipe do $.coffee
    .pipe gulp.dest './dest'

gulp.task 'release', ['default'], ->
  gulp.src './dest/**'
    .pipe $.zip 'package.zip'
    .pipe gulp.dest './release'