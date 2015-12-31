axis         = require 'axis'
rupture      = require 'rupture'
autoprefixer = require 'autoprefixer-stylus'
js_pipeline  = require 'js-pipeline'
css_pipeline = require 'css-pipeline'

module.exports =
  ignores: ['readme.md', '**/layout.*', '**/_*', '.gitignore', 'ship.*conf', '*sublime*', '.keep', '*.jpg', '*.css', '*.js', '*.map']

  extensions: [
    js_pipeline(files: ["assets/js/*.coffee", "assets/js/*"]),
    css_pipeline(files: ["assets/css/*.styl", "assets/css/*"])
  ]

  stylus:
    use: [axis(), rupture(), autoprefixer()]
    sourcemap: true

  css:
    sourcemap: true

  'coffee-script':
    sourcemap: true

  jade:
    pretty: true
