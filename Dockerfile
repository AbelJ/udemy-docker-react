
# I can't use the alias because of AWS: 
# FROM node:alpine as builder
FROM node:alpine
WORKDIR '/app'
COPY package*.json ./
RUN npm install
COPY ./ ./
RUN npm run build

FROM nginx
EXPOSE 80
# I can't use the alias because of AWS: 
#COPY --from=builder /app/build /usr/share/nginx/html
#COPY --from=0 /app/build /usr/share/nginx/html