class HomeController < ApplicationController
  def home
  	@count = Loan.loan_count
  	@total_cash = Loan.loan_sum
  end
end
