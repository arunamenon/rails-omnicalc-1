class CalculationsController < ApplicationController
  def homepage
    render({ :template => "calculations/homepage" })
  end

  def square_form
    render({ :template => "calculations/square_form" })
  end

  def square_results
    @number = params.fetch("number").to_f
    @square = @number ** 2
    render({ :template => "calculations/square_results" })
  end

  def square_root_form
    render({ :template => "calculations/square_root_form" })
  end

  def square_root_results
    @number = params.fetch("user_number").to_f
    @square_root = Math.sqrt(@number)
    render({ :template => "calculations/square_root_results" })
  end

  def payment_form
    render({ :template => "calculations/payment_form" })
  end

  def payment_results
    @apr = params.fetch("user_apr").to_f / 100
    @years = params.fetch("user_years").to_f
    @principal = params.fetch("user_pv").to_f
  
    monthly_rate = @apr / 12
    months = @years * 12
    @payment = (@principal * monthly_rate) / (1 - (1 + monthly_rate) ** -months)
  
    # Format the results for proper display
    @formatted_apr = (@apr * 100).round(1).to_s + "%" # Formats as percentage with 1 decimal
    @formatted_principal = ActionController::Base.helpers.number_to_currency(@principal)
    @formatted_payment = ActionController::Base.helpers.number_to_currency(@payment)
  
    render({ :template => "calculations/payment_results" })
  end

  def random_form
    render({ :template => "calculations/random_form" })
  end

  def random_results
    @min = params.fetch("user_min").to_f
    @max = params.fetch("user_max").to_f
    @random_number = rand(@min..@max)

    render({ :template => "calculations/random_results" })
  end
end
