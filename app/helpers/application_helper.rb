module ApplicationHelper
	def format_date( date )
		return nil unless date
		date.strftime("%B %e, %Y")
	end
end
