resources.controller('resourcesCtrl',function($scope,$http){
  $http.get('./app/selectProfessor.php').then(function(data){
      $scope.pros = data.data;
      var table = $('#example').DataTable();

      $('#example tbody').on( 'click', 'tr', function () {
          $(this).toggleClass('selected');
          console.log($scope.pid);
      } );
  });

$scope.addPro = function(){
  var pro =  $.param({
      firstName : $("#first").val(),
      lastName : $("#last").val(),
      type : $('input:radio[name=type]:checked').val()
    });
    console.log(pro);
  $http.get('./app/insertProfessor.php?'+pro).then(function(data){
      console.log(data);
  });
}
});
