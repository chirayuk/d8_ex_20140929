"use strict";

function test( obj ) {
  return obj.prop + obj.prop;
}

var a = { prop: 'a' }, b = { prop: 1 }, i = 0;

while ( i++ < 10000 ) {
  test( Math.random() > 0.5 ? a : b );
}
