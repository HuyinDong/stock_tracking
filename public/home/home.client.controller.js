home.controller('homeCtrl',function($scope,$http,$state){

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

          var take  = $('#take').DataTable({
                    ajax:  "./app/selectTake.php",
                    bPaginate : false,
                    columns: [
                        { "data": "name"
                        },
                        { "data": "prefix" ,
                        "fnCreatedCell":function (nTd, sData, oData, iRow, iCol) {
                              $(nTd).html(oData.prefix + "-"+oData.code);
                            }
                        },
                        { "data": "room" ,
                        "fnCreatedCell":function (nTd, sData, oData, iRow, iCol) {
                              if(oData.cid == -1){
                                      $(nTd).html("TBA");
                                  }else{
                              $(nTd).html(oData.room);
                            }
                          } },
                        { "data": "day" ,
                        "fnCreatedCell":function (nTd, sData, oData, iRow, iCol) {
                              if(oData.sid == -1){
                                      $(nTd).html("TBA");
                                  }else if(oData.sid == -2){
                                        $(nTd).html("Online");
                                  }else{
                              $(nTd).html(oData.day+" "+oData.start+"-"+oData.end);
                            }
                          }
                          },
                        { "data": "lastname",
                        "fnCreatedCell":function (nTd, sData, oData, iRow, iCol) {
                              $(nTd).html(oData.firstname+" "+oData.lastname);
                            }
                        }
                            ],
                            select: {
                                    style: 'multi'
                                  }
                  });
                  take.on( 'deselect', function ( e, dt, type, indexes ) {
                      if(take.rows( { selected: true } ).data().length == 0){
                        $scope.deleteAvailable = false;
                      }

                  });

                  take.on( 'select', function ( e, dt, type, indexes ) {
                        $scope.deleteAvailable = true;

                  });



      $scope.addSchedule = function(){

            var takeObj = $.param({
                slot_id : $("#slot").val(),
                classroom_id : $("#classroom").val(),
                pid : $("#pro").val(),
                course_id : $("#course").val(),
            });
            console.log(takeObj);
            var assignedStatus =  $.param({
                  assigned : "Y",
                  course_id : $("#course").val(),
              });
            $http.get('./app/updateAssignedStatus.php?'+assignedStatus)
                  .then(function(data){
                      $http.get('./app/insertTake.php?'+takeObj)
                              .then(function(data){
                                  $state.reload();
                              });
                  });
                  console.log(take);
                  //take.ajax.url("./app/selectTake.php").load();

      };

      $(document).on('focus', '#course', getUpdatedCourses);

      function getUpdatedCourses(){
        $http.get('./app/selectCourse.php').then(function(data){   //selectUnscheduledCourse.php
              var course = data.data.data;
              $scope.courses = [];
              course.forEach(function(ele){
                if(ele.assigned == "N")
                $scope.courses.push({
                  content : ele.prefix+ele.code+" "+ele.section_prefix+" "+ele.name,
                  course_id : ele.course_id
              });
            });
          });
      }


      $scope.deleteSchedule = function(){
        var len = take.rows( { selected: true } ).data().length;

        for(var i = 0; i < len; i++){
            var obj = take.rows( { selected: true } ).data()[i];
            console.log(obj.course_id);
          $http.get('./app/deleteTake.php?id='+obj.id)
            .then(function(data){
              var assignedStatus =  $.param({
                    assigned : "N",
                    course_id : obj.course_id
                });
              $http.get('./app/updateAssignedStatus.php?'+assignedStatus)
                    .then(function(data){
                      //  take.ajax.url("./app/selectTake.php").load();
                        $state.reload();
                    });

            });
        }
      }



});
