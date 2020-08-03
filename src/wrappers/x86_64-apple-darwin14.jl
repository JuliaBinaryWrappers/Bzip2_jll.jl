# Autogenerated wrapper script for Bzip2_jll for x86_64-apple-darwin14
export libbzip2

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "DYLD_FALLBACK_LIBRARY_PATH"
LIBPATH_default = "~/lib:/usr/local/lib:/lib:/usr/lib"

# Relative path to `libbzip2`
const libbzip2_splitpath = ["lib", "libbz2.1.0.6.dylib"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libbzip2_path = ""

# libbzip2-specific global declaration
# This will be filled out by __init__()
libbzip2_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libbzip2 = "@rpath/libbz2.1.0.6.dylib"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"Bzip2")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    global libbzip2_path = normpath(joinpath(artifact_dir, libbzip2_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libbzip2_handle = dlopen(libbzip2_path)
    push!(LIBPATH_list, dirname(libbzip2_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(vcat(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)]), ':')

    
end  # __init__()

