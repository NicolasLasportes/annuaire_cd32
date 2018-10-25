<?php

use Illuminate\Database\Seeder;

class SiqoTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('siqo')->delete();
        
        \DB::table('siqo')->insert(array (
            0 => 
            array (
                'id' => 1,
                'nom_siqo' => 'Label Rouge',
                'created_at' => '2018-10-25 11:47:04',
                'updated_at' => NULL,
            ),
            1 => 
            array (
                'id' => 2,
                'nom_siqo' => 'AB',
                'created_at' => '2018-10-25 11:47:13',
                'updated_at' => NULL,
            ),
        ));
        
        
    }
}