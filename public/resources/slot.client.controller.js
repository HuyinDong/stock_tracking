
resources.controller('slotCtrl',function($scope,$http,$state){
  $(".timepicker").timepicker({
        showInputs: false
      });
/************************slot************************/
$scope.isNotSelected = false;
var slot  = $('#slots').DataTable({
          ajax:  "./app/selectSlot.php",
          bPaginate : false,
          columns: [
              { "data": "day"},
              { "data": "start" },
              { "data": "end" }
                  ],
                  select: {
                          style: 'multi'
                        }
        });
        slot.on( 'deselect', function ( e, dt, type, indexes ) {
            if(slot.rows( { selected: true } ).data().length == 0){
              $scope.deleteAvailable = false;
            }
        });

        slot.on( 'select', function ( e, dt, type, indexes ) {
              $scope.deleteAvailable = true;
        });

$scope.addSlot = function(){
var checkboxes = [];
$('input[type="checkbox"]:checked').each(function(){
    checkboxes.push($(this).val());
});

var cr =  $.param({
    day : checkboxes,
    start : $("#start").val(),
    end : $("#end").val()
  });
  console.log(cr);
$http.get('./app/insertSlot.php?'+cr).then(function(data){
    slot.ajax.url("./app/selectSlot.php").load();
});
}

$scope.deleteSlot = function(){
  var id = [];
  var len = slot.rows( { selected: true } ).data().length;
  console.log(slot.rows( { selected: true } ).data());
  for(var i = 0; i < len; i++){
    $http.get('./app/deleteSlot.php?time_id='+slot.rows( { selected: true } ).data()[i].slot_id)
      .then(function(data){
        var tid = parseInt(data.data);
        $http.get('./app/deleteTakeByPCT.php?type=time&q='+tid)
          .then(function(data){
                slot.ajax.url("./app/selectSlot.php").load();
          });
      });
  }
}

});
