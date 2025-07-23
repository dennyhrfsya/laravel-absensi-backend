<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');

//login
Route::post('/login', [\App\Http\Controllers\Api\AuthController::class, 'login']);

//logout
Route::post('/logout', [\App\Http\Controllers\Api\AuthController::class, 'logout'])->middleware('auth:sanctum');

//company
Route::get('/company', [\App\Http\Controllers\Api\CompanyController::class, 'show'])->middleware('auth:sanctum');

//check in
Route::post('/checkin', [\App\Http\Controllers\Api\AttendanceController::class, 'checkIn'])->middleware('auth:sanctum');

//check out
Route::post('/checkout', [\App\Http\Controllers\Api\AttendanceController::class, 'checkOut'])->middleware('auth:sanctum');

//is checkin
Route::get('/is-checkin', [\App\Http\Controllers\Api\AttendanceController::class, 'isCheckedIn'])->middleware('auth:sanctum');

//update profile
Route::post('/update-profile', [\App\Http\Controllers\Api\AuthController::class, 'updateProfile'])->middleware('auth:sanctum');
