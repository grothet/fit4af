module ValidationsHelper

	def create_text(validation)
		Validation::RANKING_ITEMS.key(validation.ranking.to_s)
	end

	def create_ranking(project)
		str = ""
		down = 0.25
		up = 0.5

		for i in 1..5
			if (i + down) <= project.get_average_ranking
				str += image_tag "small_full_star.gif"
			elsif ((i + down) >= project.get_average_ranking && i <= (project.get_average_ranking + up))
				str += image_tag "small_half_star.gif"
			else
				str += image_tag "small_empty_star.gif"
			end
		end
		str.html_safe
		
	end

	def show_stars(validation)
		str = ""
		for i in 1..5
			if i <= validation.ranking
				str += image_tag "small_full_star.gif"
			end
			if i > validation.ranking
				str += image_tag "small_empty_star.gif"
			end
		end
		# i = 0
		# validation.ranking.times do
  		#  			str += image_tag "small_full_star.gif"
  		#  			i = i + 1
		# end
		# i = 5 - i
		# i.times do
		# 	str += image_tag "small_empty_star.gif"
		# end 
		str.html_safe
	end
end
