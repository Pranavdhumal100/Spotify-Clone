# Use official Nginx image
FROM nginx:latest

# Set working directory inside Nginx
WORKDIR /usr/share/nginx/html

# Remove default website
RUN rm -rf ./*

# Copy your website files to Nginx HTML folder
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Nginx runs automatically
