<?php

class laboratorio extends TRecord
{
    const TABLENAME = 'laboratorio';
    const PRIMARYKEY= 'id';
    const IDPOLICY =  'max'; // {max, serial}
    
    // use SystemChangeLogTrait;
    


    /**
     * Constructor method
     */
    public function __construct($id = NULL)
    {
        parent::__construct($id);
        parent::addAttribute('id');
        parent::addAttribute('localizacao');
        parent::addAttribute('nome');
    }