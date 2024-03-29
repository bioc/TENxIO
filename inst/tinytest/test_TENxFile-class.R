expect_error(
    TENxFile(tempfile())
)

test_file <- tempfile()
file.create(test_file)
expect_error(
    tenxfile <- TENxFile(test_file)
)
tenxfile <- TENxFile(test_file, ".tsv")
expect_true(
    validObject(tenxfile)
)

file.remove(test_file)

test_file <- tempfile(fileext = ".tsv")
file.create(test_file)
expect_true(
    is(tenxfile <- TENxFile(test_file), "TENxFile")
)

expect_identical(
    tenxfile@resource, test_file
)

expect_identical(
    tenxfile@extension, "tsv"
)

file.remove(test_file)

test_file <- tempfile(fileext = ".bed")
file.create(test_file)

tenxfile <- TENxFile(test_file)

expect_identical(
    tenxfile@extension, "bed"
)

HDF5_conf <- system.file("include", "H5pubconf.h", package  = "Rhdf5lib")
configLine <-
    grepl(".*H5_HAVE_ROS3_VFD\\s+1", suppressWarnings(readLines(HDF5_conf)))

if (any(configLine)) {
    pbmc_url <- paste0(
        "https://raw.githubusercontent.com/waldronlab/TENxIO/",
        "devel/inst/extdata/10k_pbmc_ATACv2_f_bc_ex.h5"
    )
    
    remoteh5 <- TENxFile(pbmc_url)
    
    expect_true(
        is(remoteh5, "TENxH5")
    )
    
    expect_true(
        remoteh5@remote
    )
}