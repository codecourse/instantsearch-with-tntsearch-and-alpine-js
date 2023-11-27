<?php

namespace App\Controllers\Api;

use App\Models\Course;
use App\Controllers\Controller;
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;

class CourseController extends Controller
{
    /**
     * Render the home page
     *
     * @param Request $request
     * @param Response $response
     * @param [type] $args
     * @return void
     */
    public function index(Request $request, Response $response, $args)
    {
        $courses = Course::query();

        ['q' => $q] = $request->getQueryParams() + ['q' => ''];

        if (mb_strlen($q) >= 1) {
            ['ids' => $ids] = $search = $this->search($q);

            $courses = $courses->fromIds($ids);
        }

        $response->getBody()->write(
            $courses->get()->map(function ($course) use ($q) {
                return array_merge($course->toArray(), [
                    '_highlights' => $this->getSearchHighlights($course, $q)
                ]);
            })->toJson()
        );
        
        return $response
            ->withHeader('Content-Type', 'application/json');
    }

    /**
     * Undocumented function
     *
     * @param [type] $q
     * @param integer $limit
     * @return void
     */
    protected function search($q, $limit = 12)
    {
        $this->c->get('tnt')->selectIndex('courses.index');
        $this->c->get('tnt')->asYouType = true;

        ['ids' => $ids, 'hits' => $hits] = $this->c->get('tnt')->search($q, $limit);

        return compact('ids', 'hits');
    }

    /**
     * Undocumented function
     *
     * @param Course $course
     * @param [type] $q
     * @return void
     */
    protected function getSearchHighlights(Course $course, $q)
    {
        $fields = ['title', 'teaser'];
        $highlights = [];

        foreach ($fields as $field) {
            $highlights[$field] = $this->c->get('tnt')->highlight($course->{$field}, $q);
        }

        return $highlights;
    }
}
