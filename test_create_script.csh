
setenv ATOM_ENV stage
set base = /dpr2/apps/atom
setenv PATH /dpr2/local/bin:${PATH}
cd ${base}

set echo
/dpr2/local/bin/bundle exec rake --libdir lib --rakefile atom.rake \
"atom:gen_csh[docker,Test Atom script creation,https://s3.amazonaws.com/static.ucldc.cdlib.org/merritt/ucldc_collection_27600.atom,merritt_demo,ark:/13030/m59098q9,Test Atom script creation]"

