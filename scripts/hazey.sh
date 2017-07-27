#!/bin/bash


do_main() {
  in=$1
  convert -brightness-contrast 25x-25 $in $in
  convert -level 30%,100% $in $in
  echo ...ur pic is now hazey...
}


do_main "$@"
exit "$?"
