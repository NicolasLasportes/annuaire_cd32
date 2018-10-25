<?php

use Illuminate\Database\Seeder;

class CmsMenusTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('cms_menus')->delete();
        
        \DB::table('cms_menus')->insert(array (
            0 => 
            array (
                'id' => 2,
                'name' => 'Catégorie des produits',
                'type' => 'Route',
                'path' => 'AdminCategorie13ControllerGetIndex',
                'color' => NULL,
                'icon' => 'fa fa-glass',
                'parent_id' => 0,
                'is_active' => 1,
                'is_dashboard' => 0,
                'id_cms_privileges' => 1,
                'sorting' => 1,
                'created_at' => '2018-10-25 09:49:19',
                'updated_at' => NULL,
            ),
            1 => 
            array (
                'id' => 3,
                'name' => 'Chefs',
                'type' => 'Route',
                'path' => 'AdminChef1ControllerGetIndex',
                'color' => NULL,
                'icon' => 'fa fa-coffee',
                'parent_id' => 0,
                'is_active' => 1,
                'is_dashboard' => 0,
                'id_cms_privileges' => 1,
                'sorting' => 2,
                'created_at' => '2018-10-25 09:50:30',
                'updated_at' => NULL,
            ),
            2 => 
            array (
                'id' => 4,
                'name' => 'Commentaires',
                'type' => 'Route',
                'path' => 'AdminCommentaire1ControllerGetIndex',
                'color' => NULL,
                'icon' => 'fa fa-pencil',
                'parent_id' => 0,
                'is_active' => 1,
                'is_dashboard' => 0,
                'id_cms_privileges' => 1,
                'sorting' => 3,
                'created_at' => '2018-10-25 09:51:02',
                'updated_at' => NULL,
            ),
            3 => 
            array (
                'id' => 5,
                'name' => 'Marque des Produits',
                'type' => 'Route',
                'path' => 'AdminMarque1ControllerGetIndex',
                'color' => NULL,
                'icon' => 'fa fa-bookmark',
                'parent_id' => 0,
                'is_active' => 1,
                'is_dashboard' => 0,
                'id_cms_privileges' => 1,
                'sorting' => 4,
                'created_at' => '2018-10-25 09:51:39',
                'updated_at' => NULL,
            ),
            4 => 
            array (
                'id' => 6,
                'name' => 'Préférer',
                'type' => 'Route',
                'path' => 'AdminPreferer1ControllerGetIndex',
                'color' => NULL,
                'icon' => 'fa fa-heart',
                'parent_id' => 0,
                'is_active' => 1,
                'is_dashboard' => 0,
                'id_cms_privileges' => 1,
                'sorting' => 5,
                'created_at' => '2018-10-25 09:52:21',
                'updated_at' => NULL,
            ),
            5 => 
            array (
                'id' => 7,
                'name' => 'Producteurs',
                'type' => 'Route',
                'path' => 'AdminProducteurControllerGetIndex',
                'color' => NULL,
                'icon' => 'fa fa-book',
                'parent_id' => 0,
                'is_active' => 1,
                'is_dashboard' => 0,
                'id_cms_privileges' => 1,
                'sorting' => 6,
                'created_at' => '2018-10-25 09:53:10',
                'updated_at' => NULL,
            ),
            6 => 
            array (
                'id' => 8,
                'name' => 'Produire',
                'type' => 'Route',
                'path' => 'AdminProduireControllerGetIndex',
                'color' => NULL,
                'icon' => 'fa fa-glass',
                'parent_id' => 0,
                'is_active' => 1,
                'is_dashboard' => 0,
                'id_cms_privileges' => 1,
                'sorting' => 7,
                'created_at' => '2018-10-25 09:53:57',
                'updated_at' => NULL,
            ),
            7 => 
            array (
                'id' => 9,
                'name' => 'Produits',
                'type' => 'Route',
                'path' => 'AdminProduitControllerGetIndex',
                'color' => NULL,
                'icon' => 'fa fa-star',
                'parent_id' => 0,
                'is_active' => 1,
                'is_dashboard' => 0,
                'id_cms_privileges' => 1,
                'sorting' => 8,
                'created_at' => '2018-10-25 09:55:13',
                'updated_at' => NULL,
            ),
            8 => 
            array (
                'id' => 10,
                'name' => 'SIQO',
                'type' => 'Route',
                'path' => 'AdminSiqo1ControllerGetIndex',
                'color' => NULL,
                'icon' => 'fa fa-star',
                'parent_id' => 0,
                'is_active' => 1,
                'is_dashboard' => 0,
                'id_cms_privileges' => 1,
                'sorting' => 9,
                'created_at' => '2018-10-25 09:56:00',
                'updated_at' => NULL,
            ),
            9 => 
            array (
                'id' => 11,
                'name' => 'Sous catégorie de Produits',
                'type' => 'Route',
                'path' => 'AdminSousCategorieControllerGetIndex',
                'color' => NULL,
                'icon' => 'fa fa-glass',
                'parent_id' => 0,
                'is_active' => 1,
                'is_dashboard' => 0,
                'id_cms_privileges' => 1,
                'sorting' => 10,
                'created_at' => '2018-10-25 09:56:39',
                'updated_at' => NULL,
            ),
        ));
        
        
    }
}