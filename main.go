package main

import (
	"fmt"
	"learn_go/pkg/logging"
	"learn_go/hello"
	"learn_go/pkg/pkglo"
)

func main() {
	fmt.Printf(hello.Hello())
	fmt.Printf(pkglo.Introduce())
}