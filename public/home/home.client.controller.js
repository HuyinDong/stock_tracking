home.controller('homeCtrl',function($scope,$http){

      $scope.slots = [];
      $scope.classrooms = [];
      $scope.professors = [];
      $scope.courses = [];

      $http.get('./app/selectSlot.php').then(function(data){
            var slots = data.data.data;
            slots.forEach(function(ele){
                $scope.slots.push({
                  content : ele.day+" "+ele.start+"-"+ele.end,
                  slot_id : ele.slot_id
            });
          });
        });
      $http.get('./app/selectClassroom.php').then(function(data){
            var cr = data.data.data;
            cr.forEach(function(ele){
              $scope.classrooms.push({
                content : ele.building+"-"+ele.room+"("+ele.capacity+")",
                classroom_id : ele.classroom_id
            });
          });
        });
      $http.get('./app/selectProfessor.php').then(function(data){
            var pro = data.data.data;
            pro.forEach(function(ele){
              $scope.professors.push({
                content : ele.firstname+","+ele.lastname,
                pid : ele.pid
            });
          });
        });
        $http.get('./app/selectCourse.php').then(function(data){   //selectUnscheduledCourse.php
              var course = data.data.data;
              course.forEach(function(ele){
                if(ele.assigned == "N")
                $scope.courses.push({
                  content : ele.prefix+ele.code+" "+ele.section_prefix+" "+ele.name,
                  course_id : ele.course_id
              });
            });
          });
      $scope.addSchedule = function(){
            var take = $.param({
                slot_id : $("#slot").val(),
                classroom_id : $("#classroom").val(),
                pid : $("#pro").val(),
                course_id : $("#course").val(),
            });
            var assignedStatus =  $.param({
                  assigned : "Y",
                    course_id : $("#course").val(),
              });
            $http.get('./app/updateAssignedStatus.php?'+assignedStatus)
                  .then(function(data){
                      $http.get('./app/insertTake.php?'+take)
                              .then(function(data){
                                    console.log(data);
                              });
                  });


      };



      var take  = $('#take').DataTable({
                ajax:  "./app/selectTake.php",
                bPaginate : false,
                columns: [
                    { "data": "name"},
                    { "data": "prefix" },
                    { "data": "room" },
                    { "data": "day" },
                    { "data": "lastname" }
                        ],
                        select: {
                                style: 'multi'
                              }
              });
              console.log(take);
              take.on( 'deselect', function ( e, dt, type, indexes ) {
                  if(slot.rows( { selected: true } ).data().length == 0){
                    $scope.deleteAvailable = false;
                  }
                  console.log($scope.deleteAvailable);
              });

              take.on( 'select', function ( e, dt, type, indexes ) {
                    $scope.deleteAvailable = true;
                    console.log(slot.rows( { selected: true } ).data());
              });

});
