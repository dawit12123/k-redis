# Use the official Redis image from the Docker Hub
FROM redis:latest

# Expose the new Redis port
EXPOSE 6380

# Command to run Redis server with the new port
CMD ["redis-server", "--port", "6380"]
