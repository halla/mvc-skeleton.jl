mvc-skeleton.jl
===============

For Julia 0.3

Install requirements

```julia
Pkg.update()
Pkg.add("Mustache")
Pkg.add("Markdown")
Pkg.add("Dates")
Pkg.add("SQLite")
Pkg.add("Morsel")
Pkg.clone("Autoreload")
```

Run the web server in port 8000, listen to changes.

```julia
julia runserver.jl
```
