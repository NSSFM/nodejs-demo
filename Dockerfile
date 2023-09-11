# Use a default image Node.js
FROM node:14

# Create the /Users/demo directory in the container
RUN mkdir -p /home/demo

#Set the working directory in the container
WORKDIR /home/demo

# Copy the built artifacts to the container directory
COPY /src .

# Install dependencies
RUN npm ci

# Set port environment variable
ENV PORT=3000

# Expose port
EXPOSE 3000

# Start the Node.js app
CMD ["npm", "run",  "start"]

