# --- build Angular ---
FROM node:18-alpine AS build
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build

# --- serve with Nginx ---
FROM nginx:alpine
# Angular build output is usually in /app/dist/<project-name>
# We'll copy the whole dist folder content into Nginx html
COPY --from=build /app/dist /usr/share/nginx/html
EXPOSE 80
