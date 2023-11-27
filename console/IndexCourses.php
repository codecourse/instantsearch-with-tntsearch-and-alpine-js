<?php

require_once __DIR__ . '/../bootstrap/app.php';

$indexer = $container->get('tnt')->createIndex('courses.index');
$indexer->query('SELECT id, title, teaser FROM courses;');
$indexer->run();