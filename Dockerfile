#NODEJS-EXPRESS
FROM node:18.8.0 as node_express_image
# Set work directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
RUN npm install -g nodemon
RUN mkdir -p ./main
# Add package.json and install Dependencies
COPY app_backend/package.json package.json
RUN npm install

#NODEJS-REACTJS
FROM node:18.8.0 as node_react_image
# Set work directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
#RUN npm install -g react-scripts
COPY app_frontend/package.json package.json
RUN npm install
