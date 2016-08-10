      home.config(['$stateProvider', '$urlRouterProvider',
          function($stateProvider, $urlRouterProvider) {
              $urlRouterProvider.otherwise('/home');
              // Application routes
              $stateProvider
                  .state('home',{
                      url : '/home',
                      templateUrl :'./public/home/home.client.view.html'
                  })
                  .state('charts',{
                      url : '/charts',
                      templateUrl :'./public/charts/charts.client.view.html'
                  })
                  .state('conflicts',{
                      url : '/conflicts',
                      templateUrl :'./public/conflicts/conflicts.client.view.html'
                  })
                  .state('summary',{
                      url : '/summary',
                      templateUrl :'./public/summary/summary.client.view.html'
                  })
                  .state('resources',{
                      url : '/resources',
                      templateUrl :'./public/resources/resources.client.view.html'
                  })
          }
      ]);
