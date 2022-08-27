# Create a jekyll container from a ruby alipne image

# At a mininum use Ruby 2.5 or later

FROM ruby:2.7-alipne3.15

# Add Jekyl  dependencies to Alpine
RUN apk update
RUN apk add --no-acche build-base gcc gmake git

#Update Ruby bundler and install Jekyll
RUN gem update bundler && gem install bundler jekyll