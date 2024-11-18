# Initial problematic Dockerfile that needs optimization 
FROM ubuntu:latest
# Install dependencies 
RUN apt-get update && apt-get install -y \ 
nodejs \ 
npm \ 
curl \ 
vim \
 python3 \
 build-essential \ 
git 
# Set working directory 
WORKDIR /app 
# Copy application files 
COPY . .
 # Install dependencies 
RUN npm install 
# Set environment variables 
ENV NODE_ENV=production
 ENV PORT=3000 
# Expose port 
EXPOSE 3000 
# Start application 
CMD ["npm", "start"] 
