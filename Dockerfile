# Use the Alpine 3.18.4 image as the base
FROM alpine:3.18.4

# Set the maintainer label (best practice)
LABEL maintainer="github@proto-x.app"

# Install python3
RUN apk update && apk add python3

# Set the working directory
WORKDIR /usr/src/app

# Copy the website files into the working directory
COPY src/html .

# Expose port 80
EXPOSE 80

# Start the Python HTTP server on port 80
CMD ["python3", "-m", "http.server", "80"]