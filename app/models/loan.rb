class Loan < ApplicationRecord
	
	def self.getType
		return ["AUTO","VIVIENDA","PERSONAL"]
	end
end
