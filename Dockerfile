# Use the Nginx image from Docker Hub
FROM nginx:alpine

# Remove the default Nginx configuration file
RUN rm /etc/nginx/conf.d/default.conf

# Add a new configuration file
COPY nginx.conf /etc/nginx/conf.d

# Copy the website files from your project's root directory to the Docker image
COPY ./ /usr/share/nginx/html