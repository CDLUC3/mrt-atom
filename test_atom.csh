
setenv ATOM_ENV docker
setenv SSM_SKIP_RESOLUTION 1
# setenv SSM_ROOT_PATH /uc3/mrt/stg/
setenv PATH /dpr2/local/bin:${PATH}
cd /dpr2/merritt-workspace/mreyes/merritt-docker/mrt-services/atom

bundle exec rake --libdir lib --rakefile atom.rake \
"atom:update[https://s3.amazonaws.com/static.ucldc.cdlib.org/merritt/ucldc_collection_27600.atom, Atom processor/ZFS testing, merritt_demo_content, ark:/13030/m59098q9, lastFeedUpdate_27831-m5578h]"
