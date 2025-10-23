#!/bin/bash

# Pull the official MySQL image
docker pull mysql:5.7

# Pull the official WordPress image
docker pull wordpress:latest

#!/bin/bash

# Run MySQL container with environment variables
docker run --name mysql-container \
  -e MYSQL_ROOT_PASSWORD=rootpass \
  -e MYSQL_DATABASE=wordpress_db \
  -e MYSQL_USER=wp_user \
  -e MYSQL_PASSWORD=wp_pass \
  -d mysql:5.7

  #!/bin/bash

# Run WordPress container and link it to the MySQL container
docker run --name wordpress-container \
  --link mysql-container:mysql \
  -e WORDPRESS_DB_HOST=mysql:3306 \
  -e WORDPRESS_DB_NAME=wordpress_db \
  -e WORDPRESS_DB_USER=wp_user \
  -e WORDPRESS_DB_PASSWORD=wp_pass \
  -p 8080:80 \
  -d wordpress:latest
