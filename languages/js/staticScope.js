function sub1() {
  var x;
  function sub2() {
    var y;
    function sub3() {
      var z;
      z = 3;
      console.log('x=' + x + ' y=' + y + ' z=' + z);
    } // sub3
    y = 2;
    sub3();
    console.log('x=' + x + ' y=' + y);
  } // sub2
  x = 1;
  sub2();
} //sub1

sub1();
