<?php
// CONTROLLER
namespace App\Http\Controllers;

use App\User;
use App\Http\Controllers\Controller;

class apiProducteur extends Controller
{
    /**
     * Show the profile for the given user.
     *
     * @param  int  $id
     * @return View
     */
    public function getProducteurs()
    {
        //header("Content-type: application/json");

        try
        {
            $bdd = new \PDO('mysql:host=localhost;dbname=annuaire_producteur_cd32', 'loups', 'Qwant00;');
        }
        catch(Exception $e)
        {
            die('Erreur : '.$e->getMessage());
        }
        $producteur = array();
        $reponse = $bdd->query('SELECT * FROM producteur WHERE id_producteur=1');

        while ($donnees = $reponse->fetch())
        {
            array_push($producteur, array(
                "id"=>$donnees["id_producteur"], 
                "nom_entreprise_producteur"=>$donnees["nom_entreprise_producteur"], 
                "lieu_dit_producteur"=>$donnees["lieu_dit_producteur"], 
                "numero_producteur"=>$donnees["numero_producteur"], 
                "voie_producteur"=>$donnees["voie_producteur"], 
                "code_postal_producteur"=>$donnees["code_postal_producteur"], 
                "commune_producteur"=>$donnees["commune_producteur"], 
                "nom_producteur"=>$donnees["nom_producteur"], 
                "telephone_un_producteur"=>$donnees["telephone_un_producteur"], 
                "telephone_deux_producteur"=>$donnees["telephone_deux_producteur"], 
                "coordoneeDD_producteur"=>$donnees["coordoneeDD_producteur"], 
                "mail_producteur"=>$donnees["mail_producteur"], 
                "site_internet_producteur"=>$donnees["site_internet_producteur"]
            ));
        }
        echo json_encode($producteur);
    }
}