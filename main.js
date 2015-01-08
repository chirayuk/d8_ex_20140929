"use strict";

function test( obj ) {
  return obj.prop + obj.prop;
}

var a = { prop: 'a' }, i = 0;

while ( i++ < 10000000 ) {
  test( a );
}
