sidenav.controller('sidenavController',function($scope,$state){
    $scope.goHome = function(){
        $state.go('home');
    }
    $scope.goCharts = function(){
        $state.go('charts');
    }
    $scope.goConficts = function(){
        $state.go('conflicts');
    }
    $scope.goSummary = function(){
        $state.go('summary');
    }
    $scope.goResources = function(){
        $state.go('resources');
    }
});
