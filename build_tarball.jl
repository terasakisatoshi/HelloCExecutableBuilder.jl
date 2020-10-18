using BinaryBuilder

name = "HelloCExecutable"
version = v"0.0.1"

# No sources, we're just building the testsuite
sources = [
    DirectorySource("./src"),
]

# Bash recipe for building across all platforms
script = raw"""
mkdir -p ${prefix}/bin
cc -o ${prefix}/bin/hello_world${exeext} -g -O2 hello_world.c
install_license /usr/share/licenses/MIT
"""

# These are the platforms we will build for by default, unless further
# platforms are passed in on the command line
platforms = [ 
    MacOS(:x86_64)
]

# The products that we will ensure are always built
products = [
    ExecutableProduct("hello_world", :hello_world),
]

# Dependencies that must be installed before this package can be built
dependencies = Dependency[
]

# Build the tarballs.
build_tarballs(ARGS, name, version, sources, script, platforms, products, dependencies)