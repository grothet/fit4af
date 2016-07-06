module ProjectsHelper

	def rest_days(ende)
		if(ende >= Time.now)
			ende = ende - Time.now
		else
			"Abgelaufen"
		end
	end
end
