<?php

class Bootstrap extends Zend_Application_Bootstrap_Bootstrap
{


    public function _initRoute(){

        $router = Zend_Controller_Front::getInstance()->getRouter();

        $route1 = new Zend_Controller_Router_Route(
            'page/:page',
            array(
                'controller' => 'page',
                'action'     => 'index',
                'page'       => '1'

            )
        );

        $router->addRoute('guestbook', $route1);

        $route_user = new Zend_Controller_Router_Route(
            '/sign',
            array(
                'controller' => 'page',
                'action'     => 'sign',


            )
        );

        $router->addRoute('sign', $route_user);

        $route_goods = new Zend_Controller_Router_Route(
            'page/:page/:field_name/:sort',
            array(
                'controller' => 'page',
                'action' => 'show',
                'page' => '1'

            )

        );
        $router->addRoute('goods', $route_goods);
    }

}

