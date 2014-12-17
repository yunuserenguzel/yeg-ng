var [APPNAMEJS] = angular.module('[APPNAMEJS]', ['ngRoute'])
  .run(function ($rootScope, $location) {
    $rootScope.location = $location;
  });
