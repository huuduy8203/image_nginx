# Use the official nginx image as a parent image
FROM nginx:latest

# Set the working directory inside the container to the directory where Nginx serves files
WORKDIR /usr/share/nginx/html

# Copy the index.html file from your host to the current location (working directory) in the container
COPY index.html .

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx when the container has provisioned.
CMD ["nginx", "-g", "daemon off;"]