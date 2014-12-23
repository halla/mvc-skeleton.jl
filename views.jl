# Views (django-sense) 

function index(req, res)
	page = open(readall, "_pages/index")
    tpl = open(readall, "templates/page.html")
    body = Markdown.html(Markdown.parse(page))
    content = render(tpl, { "content" => body })

    basetpl = open(readall, "templates/base.html")
    render(basetpl, { "content" => content })	
end
