FROM node:16-alpine

EXPOSE 5000

WORKDIR /usr/src/app

COPY . .

ENV REACT_APP_BACKEND_URL=http://localhost/api/

RUN adduser -S appuser && \
    npm install && \
    npm run build && \
    npm install -g serve && \
    chown -R appuser /usr/src/app
USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]
