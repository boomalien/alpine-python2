$ErrorActionPreference = 'Stop';
Write-Host Starting build

if ($isWindows) {
  docker build --pull -t alpine-python2 -f Dockerfile.windows .
} else {
  docker build -t alpine-python2 --build-arg "arch=$env:ARCH" .
}

docker images
