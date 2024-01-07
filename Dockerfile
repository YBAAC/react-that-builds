FROM node:20 as build
# build with bun
WORKDIR /app

COPY package.json bun.lockb ./

RUN npm install -g bun
RUN bun i

COPY . .

RUN bun run build

FROM nginx:stable-alpine3.17

COPY --from=build /app/build /usr/share/nginx/html
