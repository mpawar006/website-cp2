# Use the Ubuntu base image
FROM ubuntu

# Update the package list and install Apache
RUN apt update && apt install apache2 -y

# Copy the application files to the Apache web root directory
COPY . /var/www/html/

# Start Apache in the foreground
ENTRYPOINT ["apachectl", "-D", "FOREGROUND"]
