define([
    'require',
    './app',
    './config'
], function (require) {
    'use strict';

    require(['domReady!'], function (document) {
        angular.bootstrap(document, ['app']);
    });
});