FROM boinc/client:latest
ENV BOINC_PROJECT=https://boinc.bakerlab.org/rosetta/
ENV GRIDCOIN_ADDRESS=SAfse7TyqeHG3bgyg1H9P233W4HjsDMwcs
CMD bash -c 'boinc --allow_multiple_clients --attach_project ${BOINC_PROJECT} ${GRIDCOIN_ADDRESS} & sleep 10 && python3 -m http.server 8080'
