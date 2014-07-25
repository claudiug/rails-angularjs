app.controller('StockCtrl', ['$scope', '$resource', function($scope, $resource){
  var Stocks = $resource('/stocks');
  $scope.stocks = Stocks.query();
}]);
