resources.controller('proCtrl',function($scope,$http,$state){

  $scope.isNotSelected = false;

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
                //changeValue();
              }
          });

          professor.on( 'select', function ( e, dt, type, indexes ) {
                //changeValue();
          });
function changeValue(){
    if($scope.isNotSelected){
      $scope.isNotSelected = false;
    }else{
      $scope.isNotSelected = true;
    }
}
$scope.addPro = function(){

  var pro =  $.param({
      firstName : $("#first").val(),
      lastName : $("#last").val(),
      type : $('input:radio[name=type]:checked').val()
    });
  $http.get('./app/insertProfessor.php?'+pro).then(function(data){
        professor.ajax.url("./app/selectProfessor.php").load();
  });
}

$scope.deletePro = function(){

    var id = [];
    var len = professor.rows( { selected: true } ).data().length;
    var pro = professor.rows( { selected: true } ).data();
    console.log(pro);
    for(var i = 0; i < len; i++){
      $http.get('./app/deleteProfessor.php?pid='+pro[i].pid)
        .then(function(data){
          var pid = parseInt(data.data);
          $http.get('./app/deleteTakeByPCT.php?type=professor&q='+pid)
            .then(function(data){
              var assignedStatus =  $.param({
                    assigned : "N",
                    course_id : $("#course").val(),
                });
                $http.get('./app/updateAssignedStatus.php?')
                  professor.ajax.url("./app/selectProfessor.php").load();
            });
        });
    }
}
});
