<?php

define('DS',DIRECTORY_SEPARATOR);
define('ROOT',dirname(dirname(__FILE__)).DS.'LIVEX-RS');

require_once(ROOT.DS.'library'.DS.'init.php');

redirect($page, $dirPath, $view);

