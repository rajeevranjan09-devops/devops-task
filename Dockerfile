# ---------- base image ----------
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy only package.json and lock file first (for better cache)
COPY package*.json ./

# Install dependencies
RUN npm ci --only=production

# Copy application source
COPY . .

# Create non-root user for security
RUN addgroup -S appgroup && adduser -S appuser -G appgroup
USER appuser

# Set environment
ENV NODE_ENV=production

# Expose port (Express defaults to 3000 — update if your app uses a different one)
EXPOSE 3000

# Healthcheck (Express app should expose /health; update if different)
HEALTHCHECK --interval=30s --timeout=5s --start-period=30s --retries=3 \
  CMD wget -qO- http://127.0.0.1:3000/health || exit 1

# Start app
CMD ["npm", "start"]
