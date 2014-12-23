using Markdown
using Mustache
using Dates
using SQLite
using Morsel
using DataFrames

include("setup.jl")
include("models.jl")

app = Morsel.app()
include("views.jl")
include("routes.jl")

global_context = { "staticroot" => staticroot }





function render(tpl, context) 
	Mustache.render(tpl, merge(global_context, context))	
end

