class LoansController < ApplicationController

  # Index
  def index
  	@loan = Loan.all
  end

  # NEW
  def new
  	@loan = Loan.new
  end

  #CREATE
  def create
    @loan = Loan.new( loan_params )
    if @loan.save
      redirect_to @loan
    else
      render "new"
    end
  end
  
  # Show
  def show
  	@loan = Loan.find(params[:id])
    @balance = Loan.balance( @loan.id )
  end

  def edit
    @loan = Loan.find(params[:id])
  end

  def update
    @loan = Loan.find(params[:id])

    if @loan.update_attributes(loan_params)
      redirect_to @loan
    else
      render :edit
    end
  end
  def loan_params
    params.require( :loan ).permit( :name, :loan, :loantype )
  end
end
