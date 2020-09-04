docker run -p 8001:80 \
--name AP_PGAdmin \
-e "PGADMIN_DEFAULT_EMAIL=root@domain.com" \
-e "PGADMIN_DEFAULT_PASSWORD=root" \
-d 172.16.0.183:8082/dcs/pgadmin4