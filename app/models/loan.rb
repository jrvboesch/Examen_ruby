class Loan < ApplicationRecord
	
	validates :name, presence: true
	validates :loan, presence: true

	def self.getType
		return ["AUTO","VIVIENDA","PERSONAL"]
	end

	def self.loan_count
		return Loan.count		
	end

	def self.loan_sum
		return Loan.sum(:loan)
	end

	def self.balance(id)
		return Loan.find(id).loan
	end
end
