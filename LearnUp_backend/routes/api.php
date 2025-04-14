<?php

use App\Http\Controllers\Auth\AuthenticatedSessionController;
use App\Http\Controllers\Auth\RegisteredUserController;
use App\Http\Controllers\CoursController;
use App\Http\Controllers\DisciplineController;
use App\Http\Controllers\ExamsController;
use App\Http\Controllers\GroupController;
use App\Http\Controllers\SpecialityController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\UserGroupController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user()->load('role');
});

Route::post('/auth/login', [AuthenticatedSessionController::class, 'store']);
Route::post('/auth/register', [RegisteredUserController::class, 'store']);
Route::get('/auth/users', [UserController::class, 'index']);

Route::middleware('auth:sanctum')->group(function () {
    Route::post('/auth/logout', [AuthenticatedSessionController::class, 'destroy']);
});

Route::get('/desciplines', [DisciplineController::class, 'index']);
Route::get('/desciplines/{id}', [DisciplineController::class, 'show']);

Route::get('/specialities', [SpecialityController::class, 'index']);
Route::get('/specialities/{id}', [SpecialityController::class, 'show']);

Route::get('/courses', [CoursController::class, 'index']);
Route::get('/courses/{id}', [CoursController::class, 'show']);

Route::middleware(['auth:sanctum'])->group(function () {

    Route::post('/desciplines', [DisciplineController::class, 'store'])->middleware('role:admin');
    Route::put('/desciplines/{id}', [DisciplineController::class, 'update'])->middleware('role:admin');
    Route::delete('/desciplines/{id}', [DisciplineController::class, 'destroy'])->middleware('role:admin');

    Route::post('/specialities', [SpecialityController::class, 'store'])->middleware('role:admin');
    Route::put('/specialities/{id}', [SpecialityController::class, 'update'])->middleware('role:admin');
    Route::delete('/specialities/{id}', [SpecialityController::class, 'destroy'])->middleware('role:admin');

    Route::post('/courses', [CoursController::class, 'store'])->middleware('role:admin|teacher');
    Route::put('/courses/{id}', [CoursController::class, 'update'])->middleware('role:admin|teacher');
    Route::delete('/courses/{id}', [CoursController::class, 'destroy'])->middleware('role:admin|teacher');

    Route::get('/exams', [ExamsController::class, 'index']);
    Route::post('/exams', [ExamsController::class, 'store'])->middleware('role:admin|teacher');
    Route::get('/exams/{id}', [ExamsController::class, 'show']);
    Route::delete('/exams/{id}', [ExamsController::class, 'destroy'])->middleware('role:admin|teacher');
    Route::put('/exams/{id}', [ExamsController::class, 'update'])->middleware('role:admin|teacher');

    Route::get('/groups', [GroupController::class, 'index']);
    Route::post('/groups', [GroupController::class, 'store'])->middleware('role:admin|teacher');
    Route::get('/groups/{id}', [GroupController::class, 'show']);
    Route::delete('/groups/{id}', [GroupController::class, 'destroy'])->middleware('role:admin|teacher');
    Route::put('/groups/{id}', [GroupController::class, 'update'])->middleware('role:admin|teacher');
    Route::post('/groups/{groupId}/add-user', [GroupController::class, 'addUser']);
    Route::post('/groups/{groupId}/remove-user', [GroupController::class, 'removeUser']);

    Route::get('/users/{id}', [UserController::class, 'show'])->middleware('role:admin');
    Route::post('/users', [UserController::class, 'store'])->middleware('role:admin');
    Route::put('/users/{id}', [UserController::class, 'update'])->middleware('role:admin');
    Route::delete('/users/{id}', [UserController::class, 'destroy'])->middleware('role:admin');
    Route::post('/users/{userId}/join-group', [UserController::class, 'joinToGroup']);
    Route::post('/users/{userId}/leave-group', [UserController::class, 'leaveGroup']);

    Route::get('/user-groups', [UserGroupController::class, 'index']);
    Route::get('/user-groups/{userId}', [UserGroupController::class, 'show']);
    Route::post('/user-group/add', [UserGroupController::class, 'addUserToGroup']);
    Route::post('/user-group/remove', [UserGroupController::class, 'removeUserFromGroup']);

});
