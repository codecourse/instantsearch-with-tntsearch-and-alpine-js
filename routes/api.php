<?php

use App\Controllers\Api\CourseController;

$app->get('/api/courses', CourseController::class . ':index');