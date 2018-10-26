<?php

namespace App\Http\Controllers;

use App\producteur;
use App\Http\Controllers\Controller;


class apiProducteurUtilisateur extends Controller
{
    public function getProducteurs()
    {
        $producteur = producteur::all();
        echo json_encode($producteur);
        return view('carteUtilisateur');
    }
}