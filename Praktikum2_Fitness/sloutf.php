<?php
mb_internal_encoding('ISO-8859-1');
mb_http_output('ISO-8859-1');
mb_http_input('ISO-8859-1');
mb_language('uni');
mb_regex_encoding('ISO-8859-1');
ob_start('mb_output_handler');
?>