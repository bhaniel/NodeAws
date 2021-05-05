FROM node:12.16.3
#install AWS CLI
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"  && unzip awscliv2.zip && ./aws/install
# Fix permissions so user Node can work with files
RUN mkdir /home/node/app
RUN chown -R node:node /home/node/app



#change global location 
USER node
RUN mkdir /home/node/.npm-global
RUN npm config set prefix "/home/node/.npm-global"
ENV PATH="/home/node/.npm-global/bin:${PATH}"

#install typescript globally and yo
RUN npm install --global --unsafe-perm typescript && npm install --global --unsafe-perm yo


WORKDIR /home/node/app/