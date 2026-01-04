FROM boinc/client:latest
ENV BOINC_PROJECT=rosetta@home
ENV GRIDCOIN_ADDRESS=SAfse7TyqeHG3bgyg1H9P233W4HjsDMwcs
CMD boinc --allow_multiple_clients --attach_project ${BOINC_PROJECT} ${GRIDCOIN_ADDRESS}
