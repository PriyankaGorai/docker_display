FROM nginx:1.12-alpine
RUN mkdir /usr
COPY --from=build-deps /usr/src/app/build/usr/share/nginx/html
WORKDIR /usr
RUN npm install
EXPOSE 80
CMD [ "nginx", "-g", "daemon off" ]

