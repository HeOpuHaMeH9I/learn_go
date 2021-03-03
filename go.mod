module learn_go

go 1.15

replace (
	learn_go/hello => ./hello
	learn_go/pkg/pkglo => ./pkg/pkglo

)

require (
	github.com/sirupsen/logrus v1.8.0
	learn_go/hello v0.0.0-00010101000000-000000000000
)
