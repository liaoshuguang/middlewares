FROM redis:7.0.5
COPY ./redis/redis.conf /etc/redis/redis.conf
RUN chown -R redis:redis /etc/redis/redis.conf \
    && echo 'vm.overcommit_memory = 1' >> /etc/sysctl.conf
EXPOSE 6379
CMD ["redis-server", "/etc/redis/redis.conf"]