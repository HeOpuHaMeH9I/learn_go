module learn_go

go 1.15

replace (
	learn_go/hello => ./hello
	learn_go/pkg/pkglo => ./pkg/pkglo
	learn_go/pkg/logging => ./pkg/logging
)

require learn_go/hello v0.0.0-00010101000000-000000000000
