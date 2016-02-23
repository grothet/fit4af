module MoviesHelper
	
	def image_for(poster)
		if poster.poster_image_file.blank?
			image_tag("dummy.jpg" , size: "200x200")
		else
			image_tag(poster.poster_image_file, height: "400")
		end
	end
end
