# Use an existing image as a base
FROM nginx:alpine

# Set the working directory within the container
WORKDIR /usr/share/nginx/html

# Copy all the files from source to working directory within the container
COPY build/ .

# Expose port 80
EXPOSE 80

