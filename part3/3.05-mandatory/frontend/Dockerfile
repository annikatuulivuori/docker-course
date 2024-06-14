FROM node:16-alpine

EXPOSE 5000

RUN adduser -S appuser

WORKDIR /usr/src/app

COPY . .

ENV REACT_APP_BACKEND_URL=http://localhost/api/

RUN npm install

RUN npm run build

RUN npm install -g serve

RUN chown -R appuser /usr/src/app

USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]
