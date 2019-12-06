# Deployment

- gcloud config set project interestinate-website-ongcloud
- gcloud builds submit --tag gcr.io/interestinate-website-ongcloud/interestinate-website-ssr
- firebase init
- Change Firebase hosting: https://fireship.io/courses/angular/ssr-deploy-cloud-run/
- firebase deploy
