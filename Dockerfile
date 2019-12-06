# gcloud config set project interestinate-website-nextjs
# gcloud builds submit --tag gcr.io/interestinate-website-nextjs/nest-angular-ssr

FROM node:10

WORKDIR usr/src/app

COPY package*.json ./

RUN npm install

# Copy local angular/nest code to the container
COPY . .

# Build production app
RUN npm run build:ssr

CMD ["npm", "run", "serve:ssr"]
