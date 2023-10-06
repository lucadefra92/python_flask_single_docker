<<<<<<< HEAD
FROM python:3.8-slim-buster
=======
FROM node:16-alpine as builder
>>>>>>> 1c622deb0682326866ddd3cd4676a75ac86b3a5b
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
<<<<<<< HEAD
EXPOSE 3001
CMD [ "python", "app.py" ]
=======
RUN npm run build

FROM nginx
EXPOSE 80
COPY --from=builder /app/build /usr/share/nginx/html
>>>>>>> 1c622deb0682326866ddd3cd4676a75ac86b3a5b
