import ballerina/io;

type UserInfo record {|
    readonly string username;
    string password;
|};

type UserTable table<UserInfo> key(username);

configurable string hostName = ?;

configurable int port = ?;

configurable boolean enableRemote = true;

configurable float maxPayload = 1.0;

configurable string protocol = "http";

configurable UserInfo & readonly admin = ?;

configurable UserTable & readonly users = ?;

public function main() {
    io:println("host: ", hostName);
    io:println("port: ", port);
    io:println("protocol: ", protocol);
    io:println("maximum payload (in MB): ", maxPayload);
    io:println("remote enabled: ", enableRemote);
    io:println("admin details: ", admin);
    io:println("users: ", users);
}

