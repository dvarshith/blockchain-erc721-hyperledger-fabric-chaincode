# -----------------------------------------------------
# Stage 1: Build the chaincode binary
# -----------------------------------------------------
FROM golang:1.20-alpine AS build

# Create a directory for chaincode
WORKDIR /chaincode

# Copy go.mod and go.sum (if they exist) before copying the full source
COPY chaincode/go.mod chaincode/go.sum ./
RUN go mod download

# Now copy the rest of the chaincode source
COPY chaincode/ ./

# Build the chaincode binary
RUN go build -o chaincode .

# -----------------------------------------------------
# Stage 2: Create a minimal image to run chaincode
# -----------------------------------------------------
FROM alpine:3.17

WORKDIR /chaincode

# Copy built binary from build stage
COPY --from=build /chaincode/chaincode /chaincode/chaincode

# Optionally, if you need SSL certs or other tools, install them:
RUN apk add --no-cache ca-certificates

# The Fabric chaincode launcher expects a few environment variables.
# Usually, the chaincode container is started by Fabric, passing arguments.
# So just set an entrypoint to the compiled binary:
ENTRYPOINT ["/chaincode/chaincode"]