component extends="framework.one"  {

    this.name = "fw1-contact";
    this.sessionManagement = true;
    this.sessionTimeout = createTimeSpan(0,1,0,0);
    
    variables.framework = {
        home = "contact.default",
        error = "contact.error",
        generateSES = true
    };
}