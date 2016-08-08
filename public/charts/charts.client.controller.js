
charts.controller('chartsCtrl',function($scope,$http){

  $scope.professors = [];
  $scope.classrooms = [];

  $http.get('./app/selectProfessor.php').then(function(data){
        var pro = data.data.data;
        pro.forEach(function(ele){
          $scope.professors.push({
            content : ele.firstname+","+ele.lastname,
            pid : ele.pid
        });
      });
    });

  $http.get('./app/selectClassroom.php').then(function(data){
          var crs = data.data.data;
          crs.forEach(function(ele){
            $scope.classrooms.push({
              room : ele.room,
              cid : ele.classroom_id
          });
        });
      });

      var events = [];
      $('#calendar').fullCalendar({
        header: {
          left: '',
          center: '',
          right: ''
        },
        allDaySlot:false,
        minTime : "08:00:00",
        maxTime : "22:00:00",
        weekends : false,
        defaultView: 'agendaWeek',
        columnFormat : 'ddd',
        defaultDate: '2016-06-12',
        events: events
      });

  $( "#cr" ).prop( "disabled", true );
  $(document).on('change', '#prof', getSchedule);
  $(document).on('change', '#cr', getSchedule);
  $(document).on('change','input[type=radio][name=type]',function(e){
      if(this.value == 'professor'){
        $( "#cr" ).prop( "disabled", true );
        $( "#prof" ).prop( "disabled", false );
      }else if(this.value == 'classroom'){
        $( "#prof" ).prop( "disabled", true );
        $( "#cr" ).prop( "disabled", false );
      }
  });

function getSchedule(){
  $http.get("./app/selectTake.php")
        .then(function(data){

            var arr = data.data.data;
            console.log(arr);
              var online = [];
              events = [];
              for(var i = 0; i < arr.length; i++){
                  if(arr[i].day){
                    var day = arr[i].day.split(",");
                    var startTime = arr[i].start.split(" ");
                    var endTime = arr[i].end.split(" ");
                    var startHour = startTime[0].split(":");
                    var endHour = endTime[0].split(":");
                    if(startTime[1] == "PM"){
                      startHour[0] = parseInt(startHour[0])+12;
                      endHour[0] = parseInt(endHour[0])+12;
                    }
                    var st = startHour[0]+":"+startHour[1];
                    var en = endHour[0]+":"+endHour[1];
                  for(var j = 0; j < day.length;j++){
                    var sDate = "";
                    var eDate = "";
                    if(day[j] == "M"){
                      sDate = "2016-06-13T"+st;
                      eDate = "2016-06-13T"+en;
                    }else if(day[j] == "T"){
                      sDate = "2016-06-14T"+st;
                      eDate = "2016-06-14T"+en;
                    }else if(day[j] == "W"){
                      sDate = "2016-06-15T"+st;
                      eDate = "2016-06-15T"+en;
                    }else if(day[j] == "TR"){
                      sDate = "2016-06-16T"+st;
                      eDate = "2016-06-16T"+en;
                    }else if(day[j] == "F"){
                      sDate = "2016-06-17T"+st;
                      eDate = "2016-06-17T"+en;
                    }
                    if($('input[name=type]:checked').val() == 'professor'){
                      if(arr[i].pid == $("#prof").val()){
                      events.push({
                          title : arr[i].name,
                          start : sDate,
                          end : eDate
                        });
                      }
                    }else if($('input[name=type]:checked').val() == 'classroom'){
                      console.log(arr[i].cid);
                      if(arr[i].cid == $("#cr").val()){
                      events.push({
                          title : arr[i].name,
                          start : sDate,
                          end : eDate
                        });
                      }
                    }
                    console.log(events);
                }
              }
              }
              $('#calendar').fullCalendar('removeEvents');
              $('#calendar').fullCalendar('addEventSource', events);
              $('#calendar').fullCalendar('rerenderEvents' );
        });
        }


});
