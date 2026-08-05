
setenv ATOM_ENV stage
# setenv SSM_SKIP_RESOLUTION 1
setenv SSM_ROOT_PATH /uc3/mrt/stg/
setenv NUXEO_DIR /merritt-filesys/nuxeo/mrt-atom
setenv PATH ${NUXEO_DIR}/bin:${PATH}
cd ${NUXEO_DIR}

bundle exec rake --libdir lib --rakefile atom.rake \
"atom:update[https://s3.amazonaws.com/static.ucldc.cdlib.org/merritt/ucldc_collection_27834.atom,Atom processor/Testing, merritt_demo_conten, ark:/13030/m5bk6qsm, lastUpdateTest]"
