#!/bin/sh

read_enabled_modules() {
  cat enabled-modules || echo base clojure web git monokai
}

( cat prelude.el
  read_enabled_modules | while read i; do
    echo ";; $i.el"
    cat modules/$i.el
  done
  for i in modules/personal/*.el; do
    echo ";; $i.el"
    cat $i
  done
  cat epilogue.el ) > $1
