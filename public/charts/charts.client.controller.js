
charts.controller('chartsCtrl',function($scope,$http){


  $scope.professors = [];

  $http.get('./app/selectProfessor.php').then(function(data){
        var pro = data.data.data;
        pro.forEach(function(ele){
          $scope.professors.push({
            content : ele.firstname+","+ele.lastname,
            pid : ele.pid
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

  $(document).on('change', '#prof', getScheduleForProfessor);


function getScheduleForProfessor(){

  $http.get("./app/selectTake.php")
        .then(function(data){
            console.log();
            var arr = data.data.data;
              var online = [];
              events = [];
              for(var i = 0; i < arr.length; i++){
                if(arr[i].start){
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
                  if(arr[i].pid == $("#prof").val()){
                  events.push({
                      title : arr[i].name,
                      start : sDate,
                      end : eDate
                    });

                    console.log(events);
                  }
                  }
                }
              }
              $('#calendar').fullCalendar('removeEvents');
          $('#calendar').fullCalendar('addEventSource', events);
          $('#calendar').fullCalendar('rerenderEvents' );
        });
        }

});
