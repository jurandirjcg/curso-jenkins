FROM node:13-alpine
ENV http_proxy=http://proxy-02.pr.gov.br:8000
RUN mkdir -p /home/app
COPY ./* /home/app/
WORKDIR /home/app
RUN npm install
RUN npm config set http_proxy http://proxy-02.pr.gov.br:8000
RUN npm config set proxy http://proxy-02.pr.gov.br:8000
CMD ["node", "server.js"]

