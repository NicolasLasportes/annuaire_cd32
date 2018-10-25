<?php

use Illuminate\Database\Seeder;

class ProduitTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('produit')->delete();
        
        
        
    }
}