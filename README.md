# Run Dev Mode

docker run --rm -itp 4321:4321 -v "$(pwd):/app" ghcr.io/chrisw-gg/astro-container:main dev

# Generate static site (outputs to $(pwd)/dist directory)

docker run --rm -v "$(pwd):/app" ghcr.io/chrisw-gg/astro-container:main build

# Extract package-lock.json (after updating dependencies)

docker run --rm ghcr.io/chrisw-gg/astro-container:main packages > package-lock.json