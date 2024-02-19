# 远端部署, 端口使用nginx转发
docker run -p 10000:10000 -p 10001:10001 \
-e MINIO_ROOT_USER=admin \
-e MINIO_ROOT_PASSWORD=12345678 \
-e MINIO_SERVER_URL=https://iaouua.top:9009 \
-e MINIO_BROWSER_REDIRECT_URL=https://iaouua.top:4443 \
-v /opt/minio/data:/data \
quay.io/minio/minio server /data --console-address ":10001" --address ":10000"

# 本地部署
docker run -p 10000:10000 -p 10001:10001 \
-e MINIO_ROOT_USER=admin \
-e MINIO_ROOT_PASSWORD=12345678 \
-e MINIO_SERVER_URL=http://172.16.148.55:10000 \
-e MINIO_BROWSER_REDIRECT_URL=http://172.16.148.55:10001 \
-v /Users/liao/Component/minio:/data \
quay.io/minio/minio server /data --console-address ":10001" --address ":10000"