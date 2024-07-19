# Use the official Redis image from the Docker Hub
FROM redis:latest

# Create the log file directory and set permissions
RUN mkdir -p /var/log/redis && chown redis:redis /var/log/redis

# Copy custom Redis configuration file to the container
COPY redis.conf /usr/local/etc/redis/redis.conf

# Change ownership of the configuration file to redis user
RUN chown redis:redis /usr/local/etc/redis/redis.conf

# Expose the new Redis port
EXPOSE 6380

# Switch to the redis user
USER redis

# Command to run Redis server with the new configuration file
CMD ["redis-server", "/usr/local/etc/redis/redis.conf"]
