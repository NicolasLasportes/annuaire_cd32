<?php

use Illuminate\Database\Seeder;

class CmsModulsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('cms_moduls')->delete();
        
        \DB::table('cms_moduls')->insert(array (
            0 => 
            array (
                'id' => 1,
                'name' => 'Notifications',
                'icon' => 'fa fa-cog',
                'path' => 'notifications',
                'table_name' => 'cms_notifications',
                'controller' => 'NotificationsController',
                'is_protected' => 1,
                'is_active' => 1,
                'created_at' => '2018-10-24 17:00:33',
                'updated_at' => NULL,
                'deleted_at' => NULL,
            ),
            1 => 
            array (
                'id' => 2,
                'name' => 'Privileges',
                'icon' => 'fa fa-cog',
                'path' => 'privileges',
                'table_name' => 'cms_privileges',
                'controller' => 'PrivilegesController',
                'is_protected' => 1,
                'is_active' => 1,
                'created_at' => '2018-10-24 17:00:33',
                'updated_at' => NULL,
                'deleted_at' => NULL,
            ),
            2 => 
            array (
                'id' => 3,
                'name' => 'Privileges Roles',
                'icon' => 'fa fa-cog',
                'path' => 'privileges_roles',
                'table_name' => 'cms_privileges_roles',
                'controller' => 'PrivilegesRolesController',
                'is_protected' => 1,
                'is_active' => 1,
                'created_at' => '2018-10-24 17:00:33',
                'updated_at' => NULL,
                'deleted_at' => NULL,
            ),
            3 => 
            array (
                'id' => 4,
                'name' => 'Users Management',
                'icon' => 'fa fa-users',
                'path' => 'users',
                'table_name' => 'cms_users',
                'controller' => 'AdminCmsUsersController',
                'is_protected' => 0,
                'is_active' => 1,
                'created_at' => '2018-10-24 17:00:33',
                'updated_at' => NULL,
                'deleted_at' => NULL,
            ),
            4 => 
            array (
                'id' => 5,
                'name' => 'Settings',
                'icon' => 'fa fa-cog',
                'path' => 'settings',
                'table_name' => 'cms_settings',
                'controller' => 'SettingsController',
                'is_protected' => 1,
                'is_active' => 1,
                'created_at' => '2018-10-24 17:00:33',
                'updated_at' => NULL,
                'deleted_at' => NULL,
            ),
            5 => 
            array (
                'id' => 6,
                'name' => 'Module Generator',
                'icon' => 'fa fa-database',
                'path' => 'module_generator',
                'table_name' => 'cms_moduls',
                'controller' => 'ModulsController',
                'is_protected' => 1,
                'is_active' => 1,
                'created_at' => '2018-10-24 17:00:33',
                'updated_at' => NULL,
                'deleted_at' => NULL,
            ),
            6 => 
            array (
                'id' => 7,
                'name' => 'Menu Management',
                'icon' => 'fa fa-bars',
                'path' => 'menu_management',
                'table_name' => 'cms_menus',
                'controller' => 'MenusController',
                'is_protected' => 1,
                'is_active' => 1,
                'created_at' => '2018-10-24 17:00:33',
                'updated_at' => NULL,
                'deleted_at' => NULL,
            ),
            7 => 
            array (
                'id' => 8,
                'name' => 'Email Templates',
                'icon' => 'fa fa-envelope-o',
                'path' => 'email_templates',
                'table_name' => 'cms_email_templates',
                'controller' => 'EmailTemplatesController',
                'is_protected' => 1,
                'is_active' => 1,
                'created_at' => '2018-10-24 17:00:33',
                'updated_at' => NULL,
                'deleted_at' => NULL,
            ),
            8 => 
            array (
                'id' => 9,
                'name' => 'Statistic Builder',
                'icon' => 'fa fa-dashboard',
                'path' => 'statistic_builder',
                'table_name' => 'cms_statistics',
                'controller' => 'StatisticBuilderController',
                'is_protected' => 1,
                'is_active' => 1,
                'created_at' => '2018-10-24 17:00:33',
                'updated_at' => NULL,
                'deleted_at' => NULL,
            ),
            9 => 
            array (
                'id' => 10,
                'name' => 'API Generator',
                'icon' => 'fa fa-cloud-download',
                'path' => 'api_generator',
                'table_name' => '',
                'controller' => 'ApiCustomController',
                'is_protected' => 1,
                'is_active' => 1,
                'created_at' => '2018-10-24 17:00:33',
                'updated_at' => NULL,
                'deleted_at' => NULL,
            ),
            10 => 
            array (
                'id' => 11,
                'name' => 'Log User Access',
                'icon' => 'fa fa-flag-o',
                'path' => 'logs',
                'table_name' => 'cms_logs',
                'controller' => 'LogsController',
                'is_protected' => 1,
                'is_active' => 1,
                'created_at' => '2018-10-24 17:00:33',
                'updated_at' => NULL,
                'deleted_at' => NULL,
            ),
            11 => 
            array (
                'id' => 12,
                'name' => 'Catégorie des produits',
                'icon' => 'fa fa-glass',
                'path' => 'categorie',
                'table_name' => 'categorie',
                'controller' => 'AdminCategorieController',
                'is_protected' => 0,
                'is_active' => 0,
                'created_at' => '2018-10-25 09:42:18',
                'updated_at' => NULL,
                'deleted_at' => '2018-10-25 09:49:00',
            ),
            12 => 
            array (
                'id' => 13,
                'name' => 'Catégorie des Produits',
                'icon' => 'fa fa-glass',
                'path' => 'categorie13',
                'table_name' => 'categorie',
                'controller' => 'AdminCategorie13Controller',
                'is_protected' => 0,
                'is_active' => 0,
                'created_at' => '2018-10-25 09:49:19',
                'updated_at' => NULL,
                'deleted_at' => NULL,
            ),
            13 => 
            array (
                'id' => 14,
                'name' => 'Chefs',
                'icon' => 'fa fa-coffee',
                'path' => 'chef',
                'table_name' => 'chef',
                'controller' => 'AdminChef1Controller',
                'is_protected' => 0,
                'is_active' => 0,
                'created_at' => '2018-10-25 09:50:30',
                'updated_at' => NULL,
                'deleted_at' => NULL,
            ),
            14 => 
            array (
                'id' => 15,
                'name' => 'Commentaires',
                'icon' => 'fa fa-pencil',
                'path' => 'commentaire',
                'table_name' => 'commentaire',
                'controller' => 'AdminCommentaire1Controller',
                'is_protected' => 0,
                'is_active' => 0,
                'created_at' => '2018-10-25 09:51:02',
                'updated_at' => NULL,
                'deleted_at' => NULL,
            ),
            15 => 
            array (
                'id' => 16,
                'name' => 'Marque des Produits',
                'icon' => 'fa fa-bookmark',
                'path' => 'marque',
                'table_name' => 'marque',
                'controller' => 'AdminMarque1Controller',
                'is_protected' => 0,
                'is_active' => 0,
                'created_at' => '2018-10-25 09:51:39',
                'updated_at' => NULL,
                'deleted_at' => NULL,
            ),
            16 => 
            array (
                'id' => 17,
                'name' => 'Préférer',
                'icon' => 'fa fa-heart',
                'path' => 'preferer',
                'table_name' => 'preferer',
                'controller' => 'AdminPreferer1Controller',
                'is_protected' => 0,
                'is_active' => 0,
                'created_at' => '2018-10-25 09:52:21',
                'updated_at' => NULL,
                'deleted_at' => NULL,
            ),
            17 => 
            array (
                'id' => 18,
                'name' => 'Producteurs',
                'icon' => 'fa fa-book',
                'path' => 'producteur',
                'table_name' => 'producteur',
                'controller' => 'AdminProducteurController',
                'is_protected' => 0,
                'is_active' => 0,
                'created_at' => '2018-10-25 09:53:10',
                'updated_at' => NULL,
                'deleted_at' => NULL,
            ),
            18 => 
            array (
                'id' => 19,
                'name' => 'Produire',
                'icon' => 'fa fa-bookmark',
                'path' => 'produire',
                'table_name' => 'produire',
                'controller' => 'AdminProduireController',
                'is_protected' => 0,
                'is_active' => 0,
                'created_at' => '2018-10-25 09:53:57',
                'updated_at' => NULL,
                'deleted_at' => NULL,
            ),
            19 => 
            array (
                'id' => 20,
                'name' => 'Produits',
                'icon' => 'fa fa-star',
                'path' => 'produit',
                'table_name' => 'produit',
                'controller' => 'AdminProduitController',
                'is_protected' => 0,
                'is_active' => 0,
                'created_at' => '2018-10-25 09:55:13',
                'updated_at' => NULL,
                'deleted_at' => NULL,
            ),
            20 => 
            array (
                'id' => 21,
                'name' => 'SIQO',
                'icon' => 'fa fa-star',
                'path' => 'siqo',
                'table_name' => 'siqo',
                'controller' => 'AdminSiqo1Controller',
                'is_protected' => 0,
                'is_active' => 0,
                'created_at' => '2018-10-25 09:55:59',
                'updated_at' => NULL,
                'deleted_at' => NULL,
            ),
            21 => 
            array (
                'id' => 22,
                'name' => 'Sous Catégorie de Produits',
                'icon' => 'fa fa-glass',
                'path' => 'sous_categorie',
                'table_name' => 'sous_categorie',
                'controller' => 'AdminSousCategorieController',
                'is_protected' => 0,
                'is_active' => 0,
                'created_at' => '2018-10-25 09:56:39',
                'updated_at' => NULL,
                'deleted_at' => NULL,
            ),
        ));
        
        
    }
}