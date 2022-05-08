FROM node:16 as builder
# Set workdir initially just for npm to install
WORKDIR /usr/src/app
RUN apt-get update
RUN apt-get install -y python3
COPY package*.json ./
# Install the app from npm directly
RUN npm install
COPY . .

CMD ["bash"]