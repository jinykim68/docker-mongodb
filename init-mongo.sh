#!/usr/bin/env bash

mongo -- "$MONGO_INITDB_DATABASE" <<EOF
    var rootUser = '$MONGO_INITDB_ROOT_USERNAME';
    var rootPassword = '$MONGO_INITDB_ROOT_PASSWORD';
    var admin = db.getSiblingDB('admin');
    admin.auth(rootUser, rootPassword);

    var initDbName = '$MONGO_INITDB_DATABASE';
    var initDbUser = '$MONGO_INITDB_USERNAME';
    var initDbUserPassword = '$MONGO_INITDB_PASSWORD';
    db.createUser({
        user: initDbUser,
        pwd: initDbUserPassword,
        roles: [{db: initDbName, role: "readWrite"}]
    });
EOF