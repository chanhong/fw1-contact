/**
* @output false
**/
component {

    public void function init() {}

    public void function set(required string key, required any value) {
        session[key] = value;
    }

    public any function get(required string key) {
        var result = "";
        if (findKey(key)) {
            result = session[key];
        }
        return result;
    }

    public boolean function findKey(required string key) {
        return structKeyExists(session, key);
    }

}