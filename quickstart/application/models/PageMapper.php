<?php
//application/models/PageMapper.php
class Application_Model_PageMapper
{
    protected $_dbTable;

    public function setDbTable($dbTable)
    {
        if (is_string($dbTable)) {
            $dbTable = new $dbTable();
        }
        if (!$dbTable instanceof Zend_Db_Table_Abstract) {
            throw new Exception('Invalid table data gateway provided');
        }
        $this->_dbTable = $dbTable;
        return $this;
    }

    public function getDbTable()
    {
        if (null === $this->_dbTable) {
            $this->setDbTable('Application_Model_DbTable_Guestbook');
        }
        return $this->_dbTable;
    }

    public function save(Application_Model_Page $guestbook)
    {
        $data = array(
            'user'    => $guestbook->getUser(),
            'email'   => $guestbook->getEmail(),
            'homepage'   => $guestbook->getHomepage(),
            'comment' => $guestbook->getComment(),
            'created' => date('Y-m-d H:i:s'),
            'browser'   => $guestbook->getBrowser(),
            'ip'   => $guestbook->getIp(),
            'file' => $guestbook->getFile(),
        );

        if (null === ($id = $guestbook->getId())) {
            unset($data['id']);
            $this->getDbTable()->insert($data);
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }

    public function find($id, Application_Model_Page $guestbook)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $guestbook->setId($row->id)
            ->setUser($row->user)
            ->setEmail($row->email)
            ->setHomepage($row->homepage)
            ->setComment($row->comment)
            ->setCreated($row->created);
           // ->setCreated($row->file);
    }

    public function fetchAll()
    {
        $resultSet = $this->getDbTable()->fetchAll();
        $entries   = array();
        foreach ($resultSet as $row) {
            $entry = new Application_Model_Page();
            $entry->setId($row->id)
                ->setUser($row->user)
                ->setEmail($row->email)
                ->setHomepage($row->homepage)
                ->setComment($row->comment)
                ->setCreated($row->created);
               // ->setCreated($row->file);
            $entries[] = $entry;
        }
        return $entries;
    }
}