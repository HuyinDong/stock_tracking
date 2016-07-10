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
    for(var i = 0; i < len; i++){
      $http.get('./app/deleteProfessor.php?pid='+professor.rows( { selected: true } ).data()[i].pid)
        .then(function(data){
          professor.ajax.url("./app/selectProfessor.php").load();
        });

    }
}
});
