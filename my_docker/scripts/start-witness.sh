#!/bin/bash

# trace scritps
set -x

if [ -z "$WITNESS_NAME" ]; then
    echo "INFO: \$WITNESS_NAME variable is not set. Using: 'witness'"
    WITNESS_NAME="witness"
fi

if [ -z "$CONFIG_DIR" ]; then
    echo "INFO: \$CONFIG_DIR variable is not set. Using: /usr/local/var/keripy/scripts"
    CONFIG_DIR="/usr/local/var/keripy/scripts"
fi

if [ -z "$CONFIG_FILE" ]; then
    echo "INFO: \$CONFIG_FILE file variable does not exist. Using: witness"
    CONFIG_FILE="witness"
fi

if [ -z "$WITNESS_URL" ]; then
    echo "INFO: \$WITNESS_URL variable is not set. Using: 127.0.0.1"
    WITNESS_URL="127.0.0.1"
fi

init_keystore() {
    echo "Initializing keystore..."

    if [ -z "$SALT" ]; then
        echo "INFO: \$SALT not defined. Exiting..."
        exit 1
    fi

    if [ -z "$PASSCODE" ]; then
        echo "INFO: \$PASSCODE not defined. Exiting..."
        exit 1
    fi

    # changing the hostname from 127.0.0.1 to the actual hostname
    echo "INFO: Changing the hostname to: $WITNESS_URL"
    sed -i "s/127.0.0.1/$WITNESS_URL/g" $CONFIG_DIR/keri/cf/$CONFIG_FILE.json

    echo "INFO: kli init --name $WITNESS_NAME --passcode $PASSCODE --config-dir $CONFIG_DIR --config-file $CONFIG_DIR/$CONFIG_FILE --salt $SALT"
    kli init --name $WITNESS_NAME --passcode "$PASSCODE" --config-dir $CONFIG_DIR --config-file $CONFIG_DIR/$CONFIG_FILE --salt $SALT
    if [ $? -ne 0 ]; then
        echo "ERROR: kli init failed. Exiting..."
        exit 1
    fi

    echo "Executing: kli incept --name $WITNESS_NAME --alias $WITNESS_NAME--passcode $PASSCODE --config $CONFIG_DIR --file $CONFIG_DIR/$INCEPT_FILE"
    kli incept --name $WITNESS_NAME --alias $WITNESS_NAME --passcode "$PASSCODE" --config $CONFIG_DIR --file "$CONFIG_DIR/$INCEPT_FILE"
    if [ $? -ne 0 ]; then
        echo "ERROR: kli incept failed. Exiting..."
        exit 1
    fi

    # Copying config file
    if [ ! -d /usr/local/var/keri/cf/ ]; then
        mkdir -p /usr/local/var/keri/cf/
    fi

}

# Check if database exists or not
if [ -f /usr/local/var/keri/db/witness/data.mdb ]; then
    echo "INFO: Database exists. Skipping keystore initialization..."
else
    echo "INFO: Database does not exists."
    init_keystore
fi

# Start witness
echo "Starting witness..."
kli witness start --name $WITNESS_NAME --alias $WITNESS_NAME --passcode "$PASSCODE"
