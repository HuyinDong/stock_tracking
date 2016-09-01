summary.controller('summaryCtrl',function($scope,$http){
      $scope.sections = 0;
      $scope.hours = 0;
      $scope.capacity = 0;
      var full_section = 0;
      var full_credits = 0;
      var adj_section = 0;
      var adj_credits = 0;

      $scope.printSummary = function(){
          window.print();
      };

      $http.get("app/selectTake.php").then(function(data){

            var arr = data.data.data;
            var full = [];
            var adjunct = [];
            $scope.sections = arr.length;
            for(var i =0;i<arr.length;i++){
            $scope.hours+=parseInt(arr[i].credits);
            if(arr[i].capacity != null){
                $scope.capacity+=parseInt(arr[i].capacity);
            }
            if(arr[i].type == "Adjunct"){
              adjunct.push(arr[i]);
              adj_section++;
              adj_credits+=parseInt(arr[i].credits);
            }else if(arr[i].type == "Full Time"){
              full.push(arr[i]);
              full_section++;
              full_credits+=parseInt(arr[i].credits);
            }else{

            }
          }

          $scope.per_full_section = (full_section/(full_section+adj_section)*100).toFixed(2);
          $scope.per_full_credits = (full_credits/(full_credits+adj_credits)*100).toFixed(2);
          $scope.per_adj_section = (adj_section/(full_section+adj_section)*100).toFixed(2);
          $scope.per_adj_credits = (adj_section/(full_section+adj_section)*100).toFixed(2);

          console.log(full);
           $('#full').DataTable({
                    data : full,
                    bPaginate : false,
                    columns: [
                        { "data": "name"},
                        { "data": "section_prefix"},
                        { "data": "credits"}
                            ]
                  });
                 $('#adjunct').DataTable({
                            data : adjunct,
                            bPaginate : false,
                            columns: [
                                { "data": "name"},
                                { "data": "section_prefix"},
                                { "data": "credits"}
                                    ]
                          });
            });
});
