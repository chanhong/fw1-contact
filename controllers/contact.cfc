component accessors="true" {

    property contactService;

    public void function init( fw ){
        variables.fw = fw;
    }

    function default( rc ) {        
    }

    function save( rc ) {
        writeDump(rc);
        abort;
    }

}