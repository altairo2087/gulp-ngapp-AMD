fs = require 'fs'
path = require 'path'

srcpath = './dist/js'

prop =
  vendor:
    lodash: './bower_components/lodash/lodash.min',
    jq: './bower_components/jquery/dist/jquery.min'
    jqMigrate: './bower_components/jquery-migrate/jquery-migrate'
    ng: './bower_components/angular/angular.min'
    ngAMD: './bower_components/angularAMD/angularAMD.min',
    ngLoad: './bower_components/angularAMD/ngload.min',
    ngSanitize: './bower_components/angular-sanitize/angular-sanitize.min'
    uiRouter: './bower_components/angular-ui-router/release/angular-ui-router.min'
    uiBs: './bower_components/angular-bootstrap/ui-bootstrap-tpls.min'
    webStorage: './bower_components/angular-webstorage/angular-webstorage.min'
    iScroll: './bower_components/ngInfiniteScroll/build/ng-infinite-scroll.min'
    ngLocaleRu: './bower_components/angular-locale-ru/angular-locale_ru'
    ngAnimate: './bower_components/angular-animate/angular-animate.min'
    ngUploader: './bower_components/ng-file-upload/ng-file-upload-all.min'
    notify: './bower_components/remarkable-bootstrap-notify/dist/bootstrap-notify.min'
    yamap: './bower_components/angular-yandex-map/ya-map-2.1.min'
    ngMask: './bower_components/angular-mask/dist/ngMask.min'
    bsTour: './bower_components/bootstrap-tour/build/js/bootstrap-tour.min'
    ngBsTour: './bower_components/angular-bootstrap-tour/dist/angular-bootstrap-tour.min'
    ngLazyImg: './bower_components/angular-lazy-img/release/angular-lazy-img.min'
    bs: './bower_components/bootstrap/dist/js/bootstrap.min'

  vendorCss:
    bsTour: './bower_components/bootstrap-tour/build/js/bootstrap-tour.min'
    bs: './bower_components/bootstrap/dist/css/bootstrap.min'

  vendorFonts: [
    './bower_components/bootstrap/dist/fonts/glyphicons-halflings-regular.eot'
    './bower_components/bootstrap/dist/fonts/glyphicons-halflings-regular.svg'
    './bower_components/bootstrap/dist/fonts/glyphicons-halflings-regular.ttf'
    './bower_components/bootstrap/dist/fonts/glyphicons-halflings-regular.woff'
  ]

  shim:
    lodash:
      exports: '_'
    bs: ['jq']
    bsTour: ['jq']
    ng:
      exports: 'angular'
      deps: ['jq']
    notify: ['bs']
    ngSanitize: ['ng']
    ngLocaleRu: ['ng']
    uiRouter: ['ng']
    webStorage: ['ng']
    ngUploader: ['ng']
    uiBs: ['ng']
    ngMask: ['ng']
    yamap: ['ng']
    iScroll: ['ng']

  deps: ['./bootstrap']

getModules = ->
  result = []
  files = fs.readdirSync srcpath
  for file in files
    do (file) ->
      if (fs.statSync path.join srcpath, file).isDirectory()
        try
          if (fs.statSync path.join srcpath, file, 'module.js') isnt null
            result.push file
        catch error
  result

module.exports = (env, options) ->
  console.log getModules()