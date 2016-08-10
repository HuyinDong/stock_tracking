conflicts.controller('conflictsCtrl',function($scope,$http){

      $scope.color = [" "," box-info"," box-warning"," box-primary"," box-success"," box-danger"," "," "];
      $scope.conflicts = [];

      $scope.getRandomSpan = function(){
          return Math.floor((Math.random()*5)+1);
      }

      $http.get("./app/selectTake.php")
            .then(function(data){

                var arr = data.data.data;
                var courses = [];

                for(var i = 0; i < arr.length ; i++){

                    if(arr[i].day){
                      var days = arr[i].day.split(",");

                      var temp = arr[i];
                      var startTime = temp.start.split(" ");
                      var endTime = temp.end.split(" ");
                      var startHour = startTime[0].split(":");
                      var endHour = endTime[0].split(":");
                      if(startTime[1] == "PM"){
                        startHour[0] = parseInt(startHour[0])+12;
                        endHour[0] = parseInt(endHour[0])+12;
                      }
                      temp.startHour = parseInt(startHour[0]);
                      temp.startMinute = parseInt(startHour[1]);
                      temp.endHour = parseInt(endHour[0]);
                      temp.endMinute = parseInt(endHour[1]);

                      for(var j = 0;j<days.length;j++){
                        temp = arr[i];
                        temp.d = days[j];
                        var cloneOfA = JSON.parse(JSON.stringify(temp));
                        courses.push(cloneOfA);
                      }
                    }
                }

                  var copy = courses;

                  for(var i = 0; i < courses.length-1;i++){
                    for(var j = i+1; j < courses.length;j++){
                        if(courses[i].d, courses[j].d,isOverlapped(courses[i],courses[j])){
                            if(courses[i].building == courses[j].building && courses[i].room == courses[j].room){
                                  $scope.conflicts.push({
                                      "courseOne":courses[i],
                                      "courseTwo":courses[j],
                                      "reason":"Classroom has been double checked"
                                  });
                            }else if(courses[i].firstname == courses[j].firstname && courses[i].lastname == courses[j].lastname){
                              $scope.conflicts.push({
                                  "courseOne":courses[i],
                                  "courseTwo":courses[j],
                                  "reason":"Professor has been double checked"
                              });
                            }
                        }
                    }
                  }
                  console.log($scope.conflicts);
              });


              function isOverlapped(courseOne,courseTwo){
                  if(courseOne.d == courseTwo.d){
                  if(isTimeEarlier(courseOne.startHour,courseOne.startMinute,courseTwo.startHour,courseTwo.startMinute) &&
                      isTimeEarlier(courseTwo.startHour,courseTwo.startMinute,courseOne.endHour,courseOne.endMinute)){
                      return true;
                  }else if(isTimeEarlier(courseTwo.startHour,courseTwo.startMinute,courseOne.startHour,courseOne.startMinute) &&
                      isTimeEarlier(courseOne.startHour,courseOne.startMinute,courseTwo.endHour,courseTwo.endMinute)){
                    return true;
                  }else{
                    return false;
                  }
                }else{
                  return false;
                }
              }

              function isTimeEarlier(timeOneHour, timeOneMinute, timeTwoHour, timeTwoMinute){
                  if(timeOneHour < timeTwoHour){
                    return true;
                  }else if(timeOneHour == timeTwoHour){
                    return timeOneMinute <= timeTwoMinute;
                  }else{
                    return false;
                  }
              }
});
