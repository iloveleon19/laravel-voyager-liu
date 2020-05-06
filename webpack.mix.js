const mix = require('laravel-mix');

/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel application. By default, we are compiling the Sass
 | file for the application as well as bundling up all the JS files.
 |
 */

mix.js('resources/js/app.js', 'public/js')
    .js('resources/js/slides.js', 'public/js')
    // .js('resources/js/slides.min.js', 'public/js')
    .js('resources/js/custom.js', 'public/js/')
    .copy('resources/js/soundcloud.min.js', 'public/js')
    .copy('resources/js/plugins.js', 'public/js')
    .copy('resources/js/swiper.min.js', 'public/js')
    .sass('resources/sass/app.scss', 'public/css')
    .sass('resources/sass/slides.scss', 'public/css')
    .sass('resources/sass/custom.scss', 'public/css')

if (mix.inProduction()) {
    mix.version();
}
