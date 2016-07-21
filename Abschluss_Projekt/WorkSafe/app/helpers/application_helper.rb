module ApplicationHelper
	
	def user_name(id)
		name = User.find_by(id: id)
		if name.present?
			return name
		else
			name = User.find_by(name: "Anonym")
		end
		#Fehler, wenn es keinen Datensatz mehr gibt -> Nil übergabe!!!
		#Gelöst 21.07.16 => Es wird der User Anonym übergeben
	end

end
