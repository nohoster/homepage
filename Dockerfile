FROM nginx:mainline-alpine

RUN apk add --no-cache git
RUN git clone --depth 1 https://github.com/nohoster/homepage.git && rm -rf homepage/.git && cp homepage/static/* /usr/share/nginx/html/
