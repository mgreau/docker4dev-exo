#!/bin/bash

# link volume as current installation
ln -s /myproject/platform-${EXO_VERSION} ${EXO_APP_DIR}/current

# Configure MySQL
mv ${EXO_APP_DIR}/server.xml ${EXO_APP_DIR}/current/conf/server.xml
mv ${EXO_APP_DIR}/mysql-connector-java-${MYSQL_CONNECTOR_VERSION}.jar ${EXO_APP_DIR}/current/lib/

# Cleanup instance
rm -rf ${EXO_APP_DIR}/current/logs && ln -s ${EXO_LOG_DIR} ${EXO_APP_DIR}/current/logs
chown -R ${EXO_USER}:${EXO_GROUP} ${EXO_APP_DIR}/current/

# Install task addon
${EXO_APP_DIR}/current/addon install ${ADDON_TASK}

# Start PLF instance as user exo
${EXO_APP_DIR}/current/start_eXo.sh --data ${EXO_DATA_DIR}
