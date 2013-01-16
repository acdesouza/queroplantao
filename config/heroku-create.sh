#!/bin/bash
heroku create queroplantao

git push heroku master

# Database
heroku addons:add heroku-postgresql:dev
heroku run rake db:create
heroku run rake db:migrate

# Domain
# https://devcenter.heroku.com/articles/custom-domains
heroku domains:add queroplantao.com.br
heroku domains:add www.queroplantao.com.br
