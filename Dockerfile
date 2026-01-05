FROM boinc/client:latest
ENV BOINC_PROJECT=https://boinc.bakerlab.org/rosetta/
ENV GRIDCOIN_ADDRESS=SAfse7TyqeHG3bgyg1H9P233W4HjsDMwcs
RUN echo '#!/bin/bash\nboinc --allow_multiple_clients --attach_project ${BOINC_PROJECT} ${GRIDCOIN_ADDRESS} &' > /start.sh && chmod +x /start.sh
CMD /start.sh && python3 -m http.server 8080
