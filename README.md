# Build

docker build -t astro --progress=plain .

# Run Dev Mode

docker run --rm -itp 4321:4321 -v "$(pwd):/app" astro dev

# Generate static site (outputs to $(pwd)/dist directory)

docker run --rm -v "$(pwd):/app" astro build

# Extract package-lock.json (after updating dependencies)

docker run --rm astro packages > package-lock.json