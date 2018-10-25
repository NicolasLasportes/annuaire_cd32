<?php

use Illuminate\Database\Seeder;

class CmsLogsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('cms_logs')->delete();
        
        \DB::table('cms_logs')->insert(array (
            0 => 
            array (
                'id' => 1,
                'ipaddress' => '127.0.0.1',
            'useragent' => 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0',
                'url' => 'http://127.0.0.1:8000/admin/module_generator/delete/12',
                'description' => 'Delete data Catégorie des produits at Module Generator',
                'details' => '',
                'id_cms_users' => 1,
                'created_at' => '2018-10-25 09:49:00',
                'updated_at' => NULL,
            ),
            1 => 
            array (
                'id' => 2,
                'ipaddress' => '127.0.0.1',
            'useragent' => 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0',
                'url' => 'http://127.0.0.1:8000/admin/sous_categorie/add-save',
                'description' => 'Add New Data  at Sous catégorie de Produits',
                'details' => '',
                'id_cms_users' => 1,
                'created_at' => '2018-10-25 09:59:18',
                'updated_at' => NULL,
            ),
            2 => 
            array (
                'id' => 3,
                'ipaddress' => '127.0.0.1',
            'useragent' => 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0',
                'url' => 'http://127.0.0.1:8000/admin/sous_categorie/add-save',
                'description' => 'Add New Data  at Sous catégorie de Produits',
                'details' => '',
                'id_cms_users' => 1,
                'created_at' => '2018-10-25 10:05:07',
                'updated_at' => NULL,
            ),
            3 => 
            array (
                'id' => 4,
                'ipaddress' => '127.0.0.1',
            'useragent' => 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0',
                'url' => 'http://127.0.0.1:8000/admin/sous_categorie/delete/2',
                'description' => 'Delete data 2 at Sous catégorie de Produits',
                'details' => '',
                'id_cms_users' => 1,
                'created_at' => '2018-10-25 10:05:23',
                'updated_at' => NULL,
            ),
            4 => 
            array (
                'id' => 5,
                'ipaddress' => '127.0.0.1',
            'useragent' => 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0',
                'url' => 'http://127.0.0.1:8000/admin/siqo/add-save',
                'description' => 'Add New Data  at SIQO',
                'details' => '',
                'id_cms_users' => 1,
                'created_at' => '2018-10-25 11:47:04',
                'updated_at' => NULL,
            ),
            5 => 
            array (
                'id' => 6,
                'ipaddress' => '127.0.0.1',
            'useragent' => 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:62.0) Gecko/20100101 Firefox/62.0',
                'url' => 'http://127.0.0.1:8000/admin/siqo/add-save',
                'description' => 'Add New Data  at SIQO',
                'details' => '',
                'id_cms_users' => 1,
                'created_at' => '2018-10-25 11:47:13',
                'updated_at' => NULL,
            ),
        ));
        
        
    }
}