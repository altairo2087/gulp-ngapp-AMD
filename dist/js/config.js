/**
 * loads sub modules and wraps them up into the main module
 * this should be used for top-level module definitions only
 */
define(['./app', './router'], function (app, router) {
    'use strict';
    return app.config([
        '$stateProvider',
        '$urlRouterProvider',
        '$locationProvider',
        '$ocLazyLoadProvider',
    ], function (
        $stateProvider,
        $urlRouterProvider,
        $locationProvider,
        $ocLazyLoadProvider
    ) {
        router($urlRouterProvider, $locationProvider, $stateProvider)
    })
});