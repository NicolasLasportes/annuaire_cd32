<?php

use Illuminate\Database\Seeder;

class CmsUsersTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('cms_users')->delete();
        
        \DB::table('cms_users')->insert(array (
            0 => 
            array (
                'id' => 1,
                'name' => 'Super Admin',
                'photo' => NULL,
                'email' => 'admin@crudbooster.com',
                'password' => '$2y$10$iSPD01Hnme6aaq1dWS49N.bOLbi0YA3OuvcA.NGqHMeo0W46bypMe',
                'id_cms_privileges' => 1,
                'created_at' => '2018-10-24 17:00:33',
                'updated_at' => NULL,
                'status' => 'Active',
            ),
        ));
        
        
    }
}