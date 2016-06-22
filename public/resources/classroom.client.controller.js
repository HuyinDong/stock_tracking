
resources.controller('classroomCtrl',function($scope,$http,$state){

/************************classroom************************/
$scope.isNotSelected = false;
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
              console.log(classroom.rows( { selected: true } ).data());
        });

$scope.addClassroom = function(){
var cr =  $.param({
    building : $("#building").val(),
    room : $("#room").val(),
    capacity : $("#capacity").val()
  });
$http.get('./app/insertClassroom.php?'+cr).then(function(data){
    classroom.ajax.url("./app/selectClassroom.php").load();
});
}

$scope.deleteClassroom = function(){
  var id = [];
  var len = classroom.rows( { selected: true } ).data().length;
  for(var i = 0; i < len; i++){
    $http.get('./app/deleteClassroom.php?classroom_id='+classroom.rows( { selected: true } ).data()[i].classroom_id)
      .then(function(data){
        classroom.ajax.url("./app/selectClassroom.php").load();
      });
  }
}

});
