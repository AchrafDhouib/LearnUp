<?php

namespace App\Http\Controllers;

use App\Models\Cours;
use Illuminate\Http\Request;

class CoursController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        try {
            $courses = Cours::with('speciality', 'exam')->get();

            return response()->json($courses);
        } catch (\Exception $e) {
            return response()->json($e->getMessage());
        }
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        try {
            $course = new Cours([
                'name' => $request->input('name'),
                'speciality_id' => $request->input('speciality_id'),
                'creator_id' => $request->input('creator_id'),
            ]);
            $course->save();

            return response()->json($course);
        } catch (\Exception $e) {
            return response()->json("'error' {$e->getMessage()}, {$e->getCode()}");
        }
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        try {
            $course = Cours::with('speciality', 'exam')->findOrFail($id);

            return response()->json($course);
        } catch (\Exception $e) {
            return response()->json("'error' {$e->getMessage()}, {$e->getCode()}");
        }
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        try {
            $course = Cours::findOrFail($id);
            $course->update($request->all());

            return response()->json($course);
        } catch (\Exception $e) {
            return response()->json("'error' {$e->getMessage()}, {$e->getCode()}");
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {

        try {
            $course = Cours::findOrFail($id);
            $course->delete();

            return response()->json('course deleted');
        } catch (\Exception $e) {
            return response()->json("'error' {$e->getMessage()}, {$e->getCode()}");
        }

    }
}
