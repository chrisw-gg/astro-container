# Pull latest

docker pull ghcr.io/chrisw-gg/astro-container:main

# Run dev mode

docker run --rm -itp 4321:4321 -v "$(pwd):/app" ghcr.io/chrisw-gg/astro-container:main dev

# Generate static site (outputs to $(pwd)/dist directory)

docker run --rm -v "$(pwd):/app" ghcr.io/chrisw-gg/astro-container:main build

# Build locally

docker build -t astro-local-container --progress=plain .

# Extract package-lock.json (after updating dependencies)

docker run --rm astro-local-container packages > package-lock.json