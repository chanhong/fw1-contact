component accessors="true" {

    property sessionFacade;

    function init( sessionFacade, beanFactory ) {
        variables.sessionFacade = sessionFacade;
        variables.beanFactory = beanFactory;

        return this;
    }

    function get(string key = "") {
        var result = "";
        if (len(key) AND variables.sessionFacade.findKey(key)) {
            result = variables.sessionFacade.get(key);
        } else {
            result = variables.beanFactory.getBean('ContactBean');
        }
        return result;
    }

    function save( any contact, string key = "contact" ) {
        if (len(contact.getEmail()) and isValid("email", contact.getEmail())) {
            getSessionFacade().set(key, contact);
        }
    }
    
}