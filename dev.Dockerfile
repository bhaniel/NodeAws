FROM node:12.16.3
#install AWS CLI
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"  && unzip awscliv2.zip && ./aws/install
#install typescript globally and yo
RUN npm install --global --unsafe-perm typescript && npm install --global --unsafe-perm yo