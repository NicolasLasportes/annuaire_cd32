<?php

use Illuminate\Database\Seeder;

class CategorieTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('categorie')->delete();
        
        \DB::table('categorie')->insert(array (
            0 => 
            array (
                'id' => 1,
                'nom_categorie' => 'Viande',
                'created_at' => '2018-10-23 13:54:04',
                'updated_at' => '2018-10-23 13:54:04',
            ),
            1 => 
            array (
                'id' => 2,
                'nom_categorie' => 'Boulangerie',
                'created_at' => '2018-10-23 13:54:04',
                'updated_at' => '2018-10-23 13:54:04',
            ),
            2 => 
            array (
                'id' => 3,
                'nom_categorie' => 'Multiple',
                'created_at' => '2018-10-23 13:54:04',
                'updated_at' => '2018-10-23 13:54:04',
            ),
            3 => 
            array (
                'id' => 4,
                'nom_categorie' => 'Legumes',
                'created_at' => '2018-10-23 13:54:04',
                'updated_at' => '2018-10-24 09:54:05',
            ),
            4 => 
            array (
                'id' => 5,
                'nom_categorie' => 'Fruit',
                'created_at' => '2018-10-23 13:54:04',
                'updated_at' => '2018-10-23 13:54:04',
            ),
            5 => 
            array (
                'id' => 6,
                'nom_categorie' => 'Produit laitier',
                'created_at' => '2018-10-23 13:54:04',
                'updated_at' => '2018-10-23 13:54:04',
            ),
            6 => 
            array (
                'id' => 7,
                'nom_categorie' => 'Legumineuses et Cereales',
                'created_at' => '2018-10-23 13:54:04',
                'updated_at' => '2018-10-24 09:53:46',
            ),
            7 => 
            array (
                'id' => 8,
                'nom_categorie' => 'Epicerie',
                'created_at' => '2018-10-23 13:54:04',
                'updated_at' => '2018-10-23 13:54:04',
            ),
            8 => 
            array (
                'id' => 9,
                'nom_categorie' => 'Boisson',
                'created_at' => '2018-10-23 13:54:04',
                'updated_at' => '2018-10-23 13:54:04',
            ),
            9 => 
            array (
                'id' => 10,
                'nom_categorie' => 'Poisson',
                'created_at' => '2018-10-23 13:54:04',
                'updated_at' => '2018-10-23 13:54:04',
            ),
        ));
        
        
    }
}