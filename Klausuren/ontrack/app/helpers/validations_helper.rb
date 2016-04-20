module ValidationsHelper

	def number_to(i)
		if i == 1
			"sehr schlecht" 
		elsif i == 2
			"schlecht"
		elsif i == 3
			"okay"
		elsif i == 4
			"gut"
		elsif i == 5
			"sehr gut"
		else
			 "Keine Daten"
		end
	end

		def to_star(i)
		if i == 1
			"*" 
		elsif i == 2
			"**"
		elsif i == 3
			"***"
		elsif i == 4
			"****"
		elsif i == 5
			"*****"
		else
			 "Keine Daten"
		end
	end

	def durchschnitt(validations)
		@Anzahl = 0.0
		@Count = 0.0

		validations.each do |validation|
     	@Anzahl = @Anzahl + validation.ranking
     	@Count = @Count + 1
     	end
     	@Durschnitt = @Anzahl/@Count
		"#{@Durschnitt}"


	end
end
