<?php

function __eval($code, $file) {
  $info = "eval() @ {$file}:\n{$code}\n\n";
  file_put_contents("/tmp/eval-".microtime(true), $info);
  return true;
}
