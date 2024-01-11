# Use the official Ruby image as a base image
FROM ruby:2.7.4

# Set the working directory inside the container
WORKDIR /app

COPY Gemfile /app

# Install Rails and other dependencies
# RUN gem install rails
RUN bundle install 

# Create a new Rails app
# RUN rails new . --database=postgresql

# Copy the application code to the container
COPY . .

# Expose port 3000 to the outside world
EXPOSE 3000

# Start the Rails server
CMD ["rails", "server", "-b", "0.0.0.0"]
