docker container run -d --rm --name mysql \
       -e "MYSQL_ALLOW_EMPTY_PASSWORD=yes" \
       -e "MYSQL_DATABASE=volume_test" \
       -e "MYSQL_USER=example" \
       -e "MYSQL_PASSWORD=example" \
       --volumes-from mysql-data \
       mysql:5.7

docker container exec -it mysql mysql -u root -p volume_test


# CREATE TABLE user( id int PRIMARY KEY AUTO_INCREMENT, name VARCHAR(255)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;
# INSERT INTO user (name) VALUES ('gopher'), ('gihyo'), ('docker');

