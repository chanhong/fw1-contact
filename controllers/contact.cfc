component accessors="true" {

    property contactService;

    public void function init( fw ){
        variables.fw = fw;
        variables.storage_key = "contactsubmission";
    }

    function default( rc ) {
        rc.contact = getContactService().get( argumentcollection = rc );
    }

    function save( rc ) {
        var contact = getContactService().get( argumentcollection = rc );
        variables.fw.populate( cfc = contact, trim = true );
        getContactService().save( contact, variables.storage_key );
        variables.fw.redirect("contact.thankyou");
    }

    function thankyou( rc ) {
        rc.contact = getContactService().get( variables.storage_key );
    }

}