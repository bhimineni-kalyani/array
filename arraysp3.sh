#!/bin/bash -x

function isPrime() {
 if(prime < 2) return false;

  for(let k = 2; k < num; k++) {
    if(num % k == 0) { 
      return false;
    }
  }
return true;
}
