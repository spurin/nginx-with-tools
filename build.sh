docker buildx create --name build_cross --driver-opt env.BUILDKIT_STEP_LOG_MAX_SIZE=10000000 --driver-opt env.BUILDKIT_STEP_LOG_MAX_SPEED=10000000
docker buildx use build_cross
docker buildx build --build-arg CACHE_DATE=$(date +%Y-%m-%d) --platform linux/386,linux/amd64,linux/arm64/v8,linux/arm/v6,linux/arm/v7,linux/ppc64le,linux/s390x -t spurin/nginx-with-tools:latest . --push
