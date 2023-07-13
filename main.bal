import ballerina/io;
import ballerina/http;

service /test on new http:Listener(9090) {
    resource function get [string... id](http:Request req) {
        io:println("Path: "+ req.rawPath);
        io:println("Extra Path: "+ req.extraPathInfo);
    }
}