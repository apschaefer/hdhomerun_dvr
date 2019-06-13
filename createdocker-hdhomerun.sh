#docker stop hdhomerun
#docker rm -f hdhomerun
docker run \
-d \
--name hdhomerun \
--hostname hdhomerun \
--net=host \
--restart=unless-stopped \
-v /u02/docker/hdhomerun/etc:/hdhomerun/etc \
-v /u02/docker/hdhomerun/video:/hdhomerun/video \
hdhomerun_dvr:latest

