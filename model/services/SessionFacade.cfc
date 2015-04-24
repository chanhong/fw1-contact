/**
* @output false
**/
component {

    public void function init() {}

    public void function set(required string key, required any value) {
        session[key] = value;
    }

    public any function get(required string key) {
        return session[key];
    }

}