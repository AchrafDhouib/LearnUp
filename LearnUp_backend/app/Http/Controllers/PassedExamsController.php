<?php

namespace App\Http\Controllers;

use App\Models\PassedExams;
use Illuminate\Http\Request;

class PassedExamsController extends Controller
{
        /**
     * Display a listing of the resource.
     */
    public function index()
    {
        try {
            $exams = PassedExams::with('student', 'exam')->get();

            return response()->json($exams);
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
            $exam = new PassedExams([
                'user_id' => $request->input('user_id'),
                'exam_id' => $request->input('exam_id'),
            ]);
            $exam->save();

            return response()->json($exam);
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
            $exam = PassedExams::with('student', 'exam')->findOrFail($id);

            return response()->json($exam);
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
            $exam = PassedExams::findOrFail($id);
            $exam->update($request->all());

            return response()->json($exam);
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
            $exam = PassedExams::findOrFail($id);
            $exam->delete();

            return response()->json('Passed exam deleted');
        } catch (\Exception $e) {
            return response()->json("'error' {$e->getMessage()}, {$e->getCode()}");
        }

    }
}
