<?php

use Illuminate\Database\Seeder;

class ActiviteCommercialeTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('activite_commerciale')->delete();
        
        \DB::table('activite_commerciale')->insert(array (
            0 => 
            array (
                'id' => 1,
                'nom_activite' => 'Boucherie',
            ),
            1 => 
            array (
                'id' => 2,
                'nom_activite' => 'Boulangerie',
            ),
            2 => 
            array (
                'id' => 3,
                'nom_activite' => 'Distributeur',
            ),
            3 => 
            array (
                'id' => 4,
                'nom_activite' => 'primeur',
            ),
            4 => 
            array (
                'id' => 5,
                'nom_activite' => 'Groupement  Producteurs',
            ),
            5 => 
            array (
                'id' => 6,
                'nom_activite' => 'Producteur',
            ),
            6 => 
            array (
                'id' => 7,
                'nom_activite' => 'Transformateur',
            ),
        ));
        
        
    }
}