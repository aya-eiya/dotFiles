export GOROOT=$(dirname $(dirname `which go`)/$(readlink `which go`))/../libexec
export GOPATH=~/Work/go
export PATH=$PATH:$GOROOT/bin
