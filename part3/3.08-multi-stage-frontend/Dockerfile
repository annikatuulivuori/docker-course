FROM node:16-alpine as build-stage

EXPOSE 5000

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

ENV REACT_APP_BACKEND_URL=http://localhost/api/

RUN npm run build

FROM nginx:1.19-alpine

COPY --from=build-stage /usr/src/app/build /usr/share/nginx/html

CMD ["nginx", "-g", "daemon off;"]
