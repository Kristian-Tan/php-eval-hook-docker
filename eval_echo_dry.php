<?php

function __eval($code, $file) {
  $info = "eval() @ {$file}:\n{$code}\n\n";
  echo $info;
  return false;
}
