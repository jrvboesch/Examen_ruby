class LoanController < ApplicationController

  # Index
  def index
  	@loan = Loan.all
  end

  # NEW
  def new
  	@loan = Loan.new
    @loantypes = Loan.getType
  end

  #CREATE
  def create
    @loan = Loan.new( params[ :loan_params ] )
    if @loan.save
      redirect_to @loan
    else
      render "new"
    end
  end
  
  # Show
  def show
  	@loan = Loan.find(params[:id])
  end

  def edit
  end

  def loan_params
    params.require( :loan ).permit( :name, :loan, :loantype )
  end
end
