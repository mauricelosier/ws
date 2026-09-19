# Step 1: Use the official Nginx stable alpine image as base
FROM nginx:stable-alpine

# Step 2: Clean out any default static files provided by Nginx
RUN rm -rf /usr/share/nginx/html/*

# Step 3: Copy your static site files from your repo into the container
# Replace "public" or "." with your specific build or source directory if needed
COPY ./public /usr/share/nginx/html

# Step 4: Expose port 80 to access the web server
EXPOSE 80

# Step 5: Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
