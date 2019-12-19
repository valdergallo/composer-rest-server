from hyperledger/composer-rest-server:0.20.8

LABEL maintainer="valdergallo@gmail.com"
LABEL description="Create composer-rest-server with Couldant"
LABEL version=${VERSION}

EXPOSE 3000

ENV NODE_CONFIG ${NODE_CONFIG}
ENV TOKEN ${TOKEN}
ENV DEBUG express:*

RUN npm install -g @ampretia/composer-wallet-cloudant

CMD npx composer-rest-server -p 3000 -c admin@solidos-network -n never -w true -y $TOKEN
