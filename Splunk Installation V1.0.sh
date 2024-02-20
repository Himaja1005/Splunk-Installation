#!/bin/bash

# Splunk version and download URL
#SPLUNK_VERSION="9.2.0.1"
SPLUNK_FILENAME="splunk-9.2.0.1-d8ae995bf219-Linux-x86_64.tgz"
SPLUNK_URL="https://download.splunk.com/products/splunk/releases/9.2.0.1/linux/${SPLUNK_FILENAME}"

# Directory to store Splunk installation files
SPLUNK_DIR="/opt/splunk"

# Download Splunk Enterprise package
wget -O ${SPLUNK_FILENAME} "${SPLUNK_URL}"

# Extract Splunk Enterprise
sudo tar -zxvf "$SPLUNK_FILENAME" -C "$SPLUNK_DIR"

# permissions to execute
sudo chmod +x ${SPLUNK_FILENAME}

# Start Splunk Enterprise
sudo ${SPLUNK_DIR}/bin/splunk start --accept-license

# Enable Splunk to start on boot
sudo ${SPLUNK_DIR}/bin/splunk enable boot-start -user splunk

# Display Splunk login information
echo "Splunk Enterprise has been installed. You can access it at http://localhost:8000"

