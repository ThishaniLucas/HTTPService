import ballerina/io;
import ballerina/http;

service /test on new http:Listener(9090) {
    resource function get [string... id](http:Request req) returns record{}{
        io:println("Path: "+ req.rawPath);
        io:println("Extra Path: "+ req.extraPathInfo);
        return {"raw": req.rawPath, "extra": req.extraPathInfo};
    }
}