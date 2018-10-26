<?php

namespace App\Http\Controllers;

use App\producteur;
use App\Http\Controllers\Controller;


class apiProducteurUtilisateur extends Controller
{
// on récupère les données JSON
    public function getProducteurs()
    {
        $producteur = producteur::all();
        echo json_encode($producteur);
    }
// on n'affiche que la view utilisateur
     public function displayProducteurs()
    {
        return view('carteUtilisateur');
    }

}