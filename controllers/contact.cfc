component accessors="true" {

    property contactService;

    public void function init( fw ){
        variables.fw = fw;
    }

    function default( rc ) {
        rc.contact = getContactService().get( argumentcollection = rc );
    }

    function save( rc ) {
        var contact = getContactService().get( argumentcollection = rc );
        variables.fw.populate( cfc = contact, trim = true );
        getContactService().save(contact, "contactsubmission");
        variables.fw.redirect("contact.thankyou");
    }

    function thankyou( rc ) {
        rc.contact = getContactService().get(key: "contactsubmission");
    }

}