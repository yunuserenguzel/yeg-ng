[APPNAMEJS].config(function ($routeProvider) {
  $routeProvider
    .when('/', {
      templateUrl: 'html/pages/home.html',
      controller: 'homeController'
    })
    .otherwise({
      redirectTo: '/'
    });
});

