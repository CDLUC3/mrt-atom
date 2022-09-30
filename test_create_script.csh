
setenv ATOM_ENV production
set base = /apps/dpr2/apps/atom
set base = /dpr2/merritt-workspace/mreyes/merritt-docker/mrt-services/atom
cd ${base}

set echo
bundle exec rake --libdir lib --rakefile atom.rake \
"atom:gen_csh[docker,Test Atom script creation,https://s3.amazonaws.com/static.ucldc.cdlib.org/merritt/ucldc_collection_27600.atom,merritt_demo,ark:/13030/m59098q9,Test Atom script creation]"
#bundle exec rake "atom:gen_csh[docker,Test Atom script creation,https://s3.amazonaws.com/static.ucldc.cdlib.org/merritt/ucldc_collection_27600.atom,merritt_demo_content,ark:/13030/m59098q9,Test Atom script creation]" > ${base}/bin/script_test.csh

