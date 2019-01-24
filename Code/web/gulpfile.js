const gulp = require('gulp');
const watch = require('gulp-watch');

const spawn = require('child_process').spawn;
let iTime = null;

gulp.task('default', function () {
    // Callback mode, useful if any plugin in the pipeline depends on the `end`/`flush` event
    return watch('src/**/*.dart', function () {
        console.log('refresh...');

        clearTimeout(iTime);
        iTime = setTimeout(() => {
            update();
        }, 500);
    });
});

function update() {
    const build = spawn('npm', ['run', 'build']);

    build.stdout.on('data', (data) => {
      console.log(`stdout: ${data}`);
    });

    build.stderr.on('data', (data) => {
      console.log(`stderr: ${data}`);
    });

    build.on('close', (code) => {
      console.log(`Finish：${code}`);
    });
}
