<?php

class PageController extends Zend_Controller_Action
{

    public function init()
    {
        $this->view->headScript()
            ->prependFile( "/js/jquery-1.7.2.min.js", $type = 'text/javascript' )
            ->prependFile( "/js/lightbox.js", $type = 'text/javascript' )
            ->prependFile( "/css/lightbox.css", $type = 'text/stylesheet' );

    }

    public function indexAction()
    {

        $guestbook = new Application_Model_DbTable_Guestbook();
        $result = $guestbook->fetchAll();
        $page=$this->_getParam('page',1);
        $paginator = Zend_Paginator::factory($result);
        $paginator->setItemCountPerPage(3);
        $paginator->setCurrentPageNumber($page);
        $this->view->paginator=$paginator;
        $paginator = Zend_Paginator::factory($result);
    }

    public function addAction()
    {
        $name = $this->getRequest()->getParam('name');
        $this->view->name = $name;
    }
    public function showAction()
    {


        $field = $this->getRequest()->getParam('field_name');
        $sort = $this->getRequest()->getParam('sort');
        $guestbook = new Application_Model_DbTable_Guestbook();
        $result = $guestbook->fetchAll($guestbook->select()->order("$field $sort" ));
        $page=$this->_getParam('page',1);
        $paginator = Zend_Paginator::factory($result);
        $paginator->setItemCountPerPage(3);
        $paginator->setCurrentPageNumber($page);
        $this->view->paginator=$paginator;
        $paginator = Zend_Paginator::factory($result);
        $this->renderScript('page/index.phtml');

    }

    public function  sortdatedescAction()
    {
        $Guestbook = new Application_Model_DbTable_Guestbook();
        $this->view->entries = $Guestbook->fetchAll($Guestbook->select()->order('created DESC'));
        $this->renderScript('guestbook/index.phtml');
    }
    public function  sortdateascAction()
    {
        $Guestbook = new Application_Model_DbTable_Guestbook();
        $this->view->entries = $Guestbook->fetchAll($Guestbook->select()->order('created ASC'));
        $this->renderScript('guestbook/index.phtml');
    }
    public function signAction()
    {
        $request = $this->getRequest();
        $form    = new Application_Form_Form();

        if ($this->getRequest()->isPost()) {
            if ($form->isValid($request->getPost())) {
                if (!$form->file->receive()) {
                    print "Error receiving the file";
                }
                $comment = new Application_Model_Page($form->getValues());
                $mapper  = new Application_Model_PageMapper();
                $mapper->save($comment);
                return $this->_helper->redirector('index');
            }
        }
        $this->view->form = $form;
    }



}


