<?php

class FormItem extends TPage
{
    private $form;
    
    /**
     * Class constructor
     * Creates the page
     */
    public function __construct()
    {
        parent::__construct();
        
        $this->form = new BootstrapFormBuilder('form_System_labs');
        $this->form->setFormTitle('Cadastro de Itens');
        $this->form->setFieldSizes('100%');
        $this->form->generateAria(); // automatic aria-label
       // $this->form->appendPage('Item');
        
        $id           = new TEntry('id');
        $name         = new TEntry('nome');
        $descricao    = new TEntry('descricao');
        $quantidade   = new TEntry('quantidade');        
        $dataDaCompra = new TDate('dataDaCompra');
        $fabricante   = new TEntry('fabricante');
        $fornecedor   = new TEntry('fornecedor');
        $patrimonio   = new TEntry('patrimonio');
        $dataCadastro = new TDate('dataCadastro');

        $gerarCodigo = new TButton('GerarCodigo');
        $gerarCodigo->setLabel('Gerar Código');
        $dataDaCompra->setMask('dd/mm/yyyy');
        $dataDaCompra->setDatabaseMask('yyyy-mm-dd');
        
        $row = $this->form->addFields(  [ new TLabel(_t('Code')), $id ],
                                        [ new TLabel(_t('Name')), $name ],
                                        [ new TLabel(_t('description')), $descricao ]
                                      );
        $row->layout = ['col-sm-2', 'col-sm-5', 'col-sm-5'];


        $row = $this->form->addFields(  
                                        [ new TLabel(_t('amount')), $quantidade ],
                                        [ new TLabel('Fornecedor'),$fornecedor ],
                                        [ new TLabel('Fabricante'), $fabricante ]
                                      );
        $row->layout = ['col-sm-2', 'col-sm-5', 'col-sm-5'];

        
        $row = $this->form->addFields( 
                                       [new TLabel('Patrimonio'),$patrimonio],
                                       [ new TLabel('Data da Compra'), $dataDaCompra ],
                                       [ new TLabel('Data de Cadastro'),$dataCadastro ]
                                       );
        $row->layout = ['col-sm-3','col-sm-3','col-sm-3'];        
        
        $this->form->addAction(_t('Save'), new TAction(array($this, 'onSend')), 'far:check-circle green');
        
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
    public function onSave($param)
    {
        $ini  = AdiantiApplicationConfig::get();
        
        try
        {
            // open a transaction with database 'permission'
            TTransaction::open('sgo');
            
            $data = $this->form->getData();
            $this->form->setData($data);
            
            $object = new ;
            $object->fromArray( (array) $data);
            $senha = $object->password;
            
            
            
            $data = new stdClass;
            $data->id = $object->id;
            TForm::sendData('form_System_user', $data);
            
            // close the transaction
            TTransaction::close();
            
            //$pos_action = new TAction(['SystemUserList', 'onReload']);
            
            // shows the success message
            new TMessage('info', TAdiantiCoreTranslator::translate('Record saved'), $pos_action);
        }
        catch (Exception $e) // in case of exception
        {
            new TMessage('error', $e->getMessage());
            TTransaction::rollback();
        }
    }
}