class PaymentsController < ApplicationController
  def new
  	@loan = Loan.find( params[:loan_id])
  	@payment = @loan.payment.build
  end

  def create
  	@loan = Loan.find( params[:loan_id])
  	@payment = @loan.payment.build( pay_params )

  	if @payment.save
    	redirect_to @loan
  	else
      render "new"
  	end
  end  

  def destroy
    @payment = Payment.find(params[:id])
    @payment.destroy

    redirect_to Loan.find(params[:loan_id])
  end

  def pay_params
    params.require( :payment ).permit( :loan_id, :pay )
  end
end