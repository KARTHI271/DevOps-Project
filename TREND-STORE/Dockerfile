FROM nginx:alpine

# Remove default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy React build files
COPY dist/ /usr/share/nginx/html/

# Expose app port
EXPOSE 3000

# Start nginx
CMD ["nginx", "-g", "daemon off;"]

