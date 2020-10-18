# HelloCExecutable

# Usage

- Install Docker
- Install Julia
- Install BinaryBuilder.jl via

```console
$ julia -e 'using Pkg; Pkg.add("BinaryBuilder")'
```

```
$ julia build_tarball.jl --verbose --deploy=local
$ cd ~/.julia/dev/HelloCExecutable_jll
               _
   _       _ _(_)_     |  Documentation: https://docs.julialang.org
  (_)     | (_) (_)    |
   _ _   _| |_  __ _   |  Type "?" for help, "]?" for Pkg help.
  | | | | | | |/ _` |  |
  | | |_| | | | (_| |  |  Version 1.5.2 (2020-09-23)
 _/ |\__'_|_|_|\__'_|  |  Official https://julialang.org/ release
|__/                   |

julia> using HelloCExecutable_jll

julia> HelloCExecutable_jll.hello_world(x->run(`$x`))
Hello, Goma!
```

