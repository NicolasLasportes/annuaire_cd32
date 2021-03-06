<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
   return view('authentification');
});

Route::get('/carte', function () {
   return view('carte');
});

Route::get('/apiProducteur', 'apiProducteur@getProducteurs');

// route qui affiche la page /carteUtilisateur créée dans le contrôleur apiProducteurUtilisateur.php
Route::get('/carteUtilisateur', 'apiProducteurUtilisateur@displayProducteurs');

// route qui affiche la page /apiCarteUtilisateur créée dans le contrôleur apiProducteurUtilisateur.php
Route::get('/apiCarteUtilisateur', 'apiProducteurUtilisateur@getProducteurs');