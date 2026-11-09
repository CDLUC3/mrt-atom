#!/bin/bash

# Refresh and initialize Nuxeo scripts
NUXEO_DIR="/merritt-filesys/nuxeo/mrt-atom"
mkdir -p ${NUXEO_DIR}
cd ${NUXEO_DIR}
git fetch
git pull

if [[ "${ATOM_ENV}" == "production" ]]
then
  aws s3 sync --exclude "*stage*" "s3://${S3CONFIG_BUCKET}/uc3/mrt/mrt-ingest-profiles/nuxeo/" ${NUXEO_DIR}/bin
  chmod 755 ${NUXEO_DIR}/bin/*
  bin/batch_nuxeo_production.bash
elif [[ "${ATOM_ENV}" == "stage" ]]
then
  aws s3 sync --exclude "*production*" "s3://${S3CONFIG_BUCKET}/uc3/mrt/mrt-ingest-profiles/nuxeo/" ${NUXEO_DIR}/bin
  chmod 755 ${NUXEO_DIR}/bin/*
  bin/batch_nuxeo_stage.bash
fi

