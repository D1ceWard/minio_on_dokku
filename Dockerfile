FROM minio/minio:RELEASE.2018-08-02T23-11-36Z

# Add user dokku
RUN adduser -D -u 32769 -g dokku dokku
USER dokku

# Create data directory for the user, where we will keep the data
WORKDIR /home/dokku

# Run the server and point to the created directory
CMD ["server", "--address", ":5000", "/home/dokku/minio/data"]