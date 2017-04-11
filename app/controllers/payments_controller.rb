class PaymentsController < ApplicationController
  def new
  end

  def create
    @amount = 500000

    @customer = Stripe::Customer.create(
      email: params[:stripeEmail],
      source: params[:stripeToken]
    )

    @charge = Stripe::Charge.create(
      :customer    => @customer.id,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'usd'
    )

    render :show

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_payment_path
  end
end
