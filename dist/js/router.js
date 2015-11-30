/**
 * Defines the main routes in the application.
 * The routes you see here will be anchors '#/' unless specifically configured otherwise.
 */

define(function () {
    return function ($urlRouterProvider, $locationProvider, $stateProvider) {
        'use strict';
        $urlRouterProvider.otherwise("/");
        $locationProvider.html5Mode(true).hashPrefix('!');
        $stateProvider
            .state('', {
                url: "",
                controller: '',
                lazyModule: '',
                lazyFiles: '',
                templateUrl: ''
            })
    }
});