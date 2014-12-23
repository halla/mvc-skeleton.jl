using Autoreload

arequire("main.jl") #

type NoException <: Exception end

function reloadloop()
	previous_error = NoException()
	while true
		try 
			print(".")
			areload()
		catch e
			if e != previous_error #TODO not working
				print("$e \n")
				previous_error = e
			end
			sleep(3)
		end
		sleep(3)		
	end
end

@async reloadloop()
while true
	try 
		start( app, 8000 )

	catch e
		print(e)
		exit()
	end
end
