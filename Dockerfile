# Use the official lightweight Nginx image
FROM nginx:alpine

# Remove the default Nginx static page
RUN rm -rf /usr/share/nginx/html/*

# Copy our HTML file into the Nginx folder
COPY index.html /usr/share/nginx/html/

# Expose port 80 for web traffic
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
