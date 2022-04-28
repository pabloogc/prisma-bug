FROM node:lts

WORKDIR /app

# To check with pg_isreaddy
RUN apt-get update && apt-get install -y \
    postgresql

COPY package.json ./package.json
COPY prisma prisma
RUN npm install

CMD /bin/bash