var pinboard = angular.module('pinboard', []);

pinboard.controller('TestCtrl',
  ['$scope',
  function(scope) {

    $scope.test = 'hello world';

  }]);