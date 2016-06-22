resources.controller('courseCtrl',function($scope,$http,$state){

/************************course************************/
$scope.isNotSelected = false;
var course  = $('#courses').DataTable({
          ajax:  "./app/selectCourse.php",
          bPaginate : false,
          columns: [
              { "data": "prefix"},
              { "data": "code" },
              { "data": "name" },
              { "data": "credits" },
              { "data": "section_prefix" },
              { "data": "numbers" }
                  ],
                  select: {
                          style: 'multi'
                        }
        });
        course.on( 'deselect', function ( e, dt, type, indexes ) {
            if(course.rows( { selected: true } ).data().length == 0){
              $scope.deleteAvailable = false;
            }
            console.log($scope.deleteAvailable);
        });

        course.on( 'select', function ( e, dt, type, indexes ) {
              $scope.deleteAvailable = true;
              console.log(course.rows( { selected: true } ).data());
        });

$scope.addCourse = function(){
var cs =  $.param({
    prefix : $("#prefix").val(),
    code : $("#code").val(),
    name : $("#name").val(),
    credits : $("#credits").val(),
    section_prefix : $("#section_prefix").val(),
    numbers : $("#numbers").val(),
  });
  console.log(cs);
$http.get('./app/insertCourse.php?'+cs).then(function(data){
    course.ajax.url("./app/selectCourse.php").load();
});
}

$scope.deleteCourse = function(){
  var id = [];
  var len = course.rows( { selected: true } ).data().length;
  for(var i = 0; i < len; i++){
    $http.get('./app/deleteCourse.php?course_id='+course.rows( { selected: true } ).data()[i].course_id)
      .then(function(data){
        course.ajax.url("./app/selectCourse.php").load();
      });
  }
}

});
