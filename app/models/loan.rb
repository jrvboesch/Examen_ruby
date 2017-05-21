class Loan < ApplicationRecord
	has_many:payment
	
	validates :name, presence: true
	validates :loan, presence: true, numericality: { greater_than: 5000 }

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
		@loan = Loan.find(id)
		return @loan.loan - @loan.payment.sum( :pay )
	end
end
