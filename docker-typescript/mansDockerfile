    FROM node:alpine
    WORKDIR /usr/ts2js
    COPY package.json .
    # COPY tsconfig.json .
    RUN touch my.ts
    RUN touch my.js
    # WORKDIR /usr/ts2js/js
    RUN ls -laht
    RUN npm install\
        && npm install typescript -g
    RUN ls -laht
    # RUN tsc --init
    # RUN tsc
    # RUN cat my.js
    CMD ["tsc --init && tsc", "cat", "my.js"]