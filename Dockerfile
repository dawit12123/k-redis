# Use the official Redis image from the Docker Hub
FROM redis:latest

# Copy custom Redis configuration file to the container
COPY redis.conf /usr/local/etc/redis/redis.conf

# Expose the new Redis port
EXPOSE 6380

# Command to run Redis server with the new configuration file
CMD ["redis-server", "/usr/local/etc/redis/redis.conf"]
