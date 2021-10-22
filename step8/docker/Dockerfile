FROM google/dart

# Set a working directory
WORKDIR /app

# Copy the entire project
COPY . .

# Install all dependencies
RUN pub get
RUN pub get --offline

ENV HTTP_PORT=8080
ENV MONGO_SERVICE_HOST=
ENV MONGO_SERVICE_PORT=27017

EXPOSE "8080:8080"

# Specify the command for running the service
ENTRYPOINT ["/usr/bin/dart", "./bin/run.dart"]