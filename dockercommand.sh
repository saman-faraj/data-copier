 docker run \
-it \
--name data-copier \
--rm \
--network data-copier-nw \
-v /home/ubuntu/environment/projects/retail_db_json:/retail_db_json \
-e BASE_DIR=/retail_db_json \
-e DB_HOST=9148dcf857fc \
-e DB_PORT=5432 \
-e DB_NAME=retail_db \
-e DB_USER=retail_user \
-e DB_PASS=itversity \
-e TABLE_NAME=categories \
data-copier \
python \
/data-copier/app/app.py
