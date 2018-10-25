<?php

use Illuminate\Database\Seeder;

class CmsMenusPrivilegesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('cms_menus_privileges')->delete();
        
        \DB::table('cms_menus_privileges')->insert(array (
            0 => 
            array (
                'id' => 1,
                'id_cms_menus' => 1,
                'id_cms_privileges' => 1,
            ),
            1 => 
            array (
                'id' => 2,
                'id_cms_menus' => 2,
                'id_cms_privileges' => 1,
            ),
            2 => 
            array (
                'id' => 3,
                'id_cms_menus' => 3,
                'id_cms_privileges' => 1,
            ),
            3 => 
            array (
                'id' => 4,
                'id_cms_menus' => 4,
                'id_cms_privileges' => 1,
            ),
            4 => 
            array (
                'id' => 5,
                'id_cms_menus' => 5,
                'id_cms_privileges' => 1,
            ),
            5 => 
            array (
                'id' => 6,
                'id_cms_menus' => 6,
                'id_cms_privileges' => 1,
            ),
            6 => 
            array (
                'id' => 7,
                'id_cms_menus' => 7,
                'id_cms_privileges' => 1,
            ),
            7 => 
            array (
                'id' => 8,
                'id_cms_menus' => 8,
                'id_cms_privileges' => 1,
            ),
            8 => 
            array (
                'id' => 9,
                'id_cms_menus' => 9,
                'id_cms_privileges' => 1,
            ),
            9 => 
            array (
                'id' => 10,
                'id_cms_menus' => 10,
                'id_cms_privileges' => 1,
            ),
            10 => 
            array (
                'id' => 11,
                'id_cms_menus' => 11,
                'id_cms_privileges' => 1,
            ),
        ));
        
        
    }
}