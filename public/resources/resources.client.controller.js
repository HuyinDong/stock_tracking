resources.controller('resourcesCtrl',function($scope,$http,$state){

  $scope.deleteAvailable = false;

  var professor  = $('#professors').DataTable({
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
          professor.on( 'deselect', function ( e, dt, type, indexes ) {
              if(professor.rows( { selected: true } ).data().length == 0){
                $scope.deleteAvailable = false;
              }
              console.log($scope.deleteAvailable);
          });

          professor.on( 'select', function ( e, dt, type, indexes ) {
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
    var len = professor.rows( { selected: true } ).data().length;
    for(var i = 0; i < len; i++){
      $http.get('./app/deleteProfessor.php?pid='+professor.rows( { selected: true } ).data()[i].pid)
        .then(function(data){
          $state.reload();
        });

    }
  console.log(table.rows( { selected: true } ).data());
}

/************************classroom************************/

var classroom  = $('#classrooms').DataTable({
          ajax:  "./app/selectClassroom.php",
          bPaginate : false,
          columns: [
              { "data": "building"},
              { "data": "room" },
              { "data": "capacity" }
                  ],
                  select: {
                          style: 'multi'
                        }
        });
        classroom.on( 'deselect', function ( e, dt, type, indexes ) {
            if(classroom.rows( { selected: true } ).data().length == 0){
              $scope.deleteAvailable = false;
            }
            console.log($scope.deleteAvailable);
        });

        classroom.on( 'select', function ( e, dt, type, indexes ) {
              $scope.deleteAvailable = true;
              console.log($scope.deleteAvailable);
        });

$scope.addClassroom = function(){
var cr =  $.param({
    building : $("#building").val(),
    room : $("#room").val(),
    capacity : $("#capacity").val()
  });
  console.log(cr);
$http.get('./app/insertClassroom.php?'+cr).then(function(data){
      $state.reload();
});
}

$scope.deleteClassroom = function(){
  var id = [];
  var len = classroom.rows( { selected: true } ).data().length;
  for(var i = 0; i < len; i++){
    $http.get('./app/deleteClassroom.php?classroom_id='+classroom.rows( { selected: true } ).data()[i].classroom_id)
      .then(function(data){
        $state.reload();

      });

  }
console.log(classroom.rows( { selected: true } ).data());
}

});
