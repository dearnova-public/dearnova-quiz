# Build
FROM node:lts-alpine as build
WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH
COPY package.json /app/package.json
RUN npm install --silent
RUN npm install @vue/cli@3.7.0 -g
COPY . /app
RUN npm run build

# Nginx
FROM nginx:1.17.0-alpine
COPY --from=build /app/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]