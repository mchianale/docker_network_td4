#copy the dataset in the container db
docker cp data/players.csv db:/players.csv
#create table
docker exec -i db psql -U main -d my_db < data/create.sql
#insert values
docker exec -i db psql -U main -d my_db -c "\COPY player FROM 'players.csv' DELIMITER ';' CSV HEADER;"


