resources.controller('resourcesCtrl',function($scope,$http,$state){

  $scope.deleteAvailable = false;
  var table  = $('#example').DataTable({
            ajax:  "./app/selectProfessor.php",
            bPaginate : false,
            columns: [
                { "data": "pid"},
                { "data": "firstname"},
                { "data": "lastname" },
                { "data": "type" }
                    ],
                    select: {
		                        style: 'multi'
                          }
          });
          table.on( 'deselect', function ( e, dt, type, indexes ) {
              if(table.rows( { selected: true } ).data().length == 0){
                $scope.deleteAvailable = false;
              }
              console.log($scope.deleteAvailable);
          });

          table.on( 'select', function ( e, dt, type, indexes ) {
                $scope.deleteAvailable = true;
                console.log($scope.deleteAvailable);
          });

$scope.addPro = function(){
  var pro =  $.param({
      firstName : $("#first").val(),
      lastName : $("#last").val(),
      type : $('input:radio[name=type]:checked').val()
    });
    console.log(pro);
  $http.get('./app/insertProfessor.php?'+pro).then(function(data){
        $state.reload();
  });
}

$scope.deletePro = function(){
    var id = [];
    var len = table.rows( { selected: true } ).data().length;
    for(var i = 0; i < len; i++){
      $http.get('./app/deleteProfessor.php?pid='+table.rows( { selected: true } ).data()[i].pid)
        .then(function(data){
          $state.reload();
        });

    }
  console.log(table.rows( { selected: true } ).data());
}
});
