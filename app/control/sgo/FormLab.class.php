<?php

class FormLab extends TPage
{
    private $form;
    
    /**
     * Class constructor
     * Creates the page
     */
    public function __construct()
    {
        parent::__construct();
        
        $this->form = new BootstrapFormBuilder('form_builder');
        $this->form->setFormTitle('Cadastro de laboratórios');
        $this->form->setFieldSizes('100%');
        $this->form->generateAria(); // automatic aria-label
        $this->form->appendPage('Basic');
        
        $code         = new TEntry('code');
        $name         = new TEntry('name');
        $doc          = new TEntry('doc');
        
        
        
        $row = $this->form->addFields( [ new TLabel('Code'),     $code ],
                                       [ new TLabel('Name'),     $name ],
                                      );
        $row->layout = ['col-sm-2', 'col-sm-10' ];
        
        
        $this->form->addAction('Send', new TAction(array($this, 'onSend')), 'far:check-circle green');
        
        // wrap the page content using vertical box
        $vbox = new TVBox;
        $vbox->style = 'width: 100%';
        $vbox->add(new TXMLBreadCrumb('menu.xml', __CLASS__));
        $vbox->add($this->form);
        parent::add($vbox);
    }
    
    /**
     * Post data
     */
    public function onSend($param)
    {
        $data = $this->form->getData();
        $this->form->setData($data);
        
        echo '<pre>';
        print_r($data);
        echo '</pre>';
    }
}