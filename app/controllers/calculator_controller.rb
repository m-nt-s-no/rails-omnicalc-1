class CalculatorController < ApplicationController
  def home
    render({:template => "/square_form"})
  end

  def square_form
    render({:template => "/square_form"})
  end

  def square
    @action = "Square"
    @input = params.fetch("number").to_f
    @result = @input ** 2
    @back_link = "/square_form"
    @back_link_text = "Calculate another square"
    render({:template => "/square_results"})
  end

  def sqrt_form
    render({:template => "/sqrt_form"})
  end

  def square_root
    @action = "Square Root"
    @input = params.fetch("number").to_f
    @result = Math.sqrt(@input)
    @back_link = "/sqrt_form"
    @back_link_text = "Calculate another square root"
    @data = {:input => @input, :result => @result}
    render({:template => "/sqrt_results"})
  end

  def payment_form
    render({:template => "/payment_form"})
  end

  def payment
    @action = "Payment"
    @apr = (params.fetch("apr").to_f / 100) / 12
    @loan_term = params.fetch("years").to_i * 12
    @principal = params.fetch("principal").to_f
    @numerator = @apr * @principal
    @denominator = 1 - ((1 + @apr) ** -@loan_term)
    @result = (@numerator/@denominator)
    @back_link = "/payment_form"
    @back_link_text = "Calculate another payment"
    render({:template => "/payment_results"})
  end

  def random_form
    render({:template => "/random_form"})
  end

  def random
    @action = "Random"
    @min = params.fetch("min").to_f
    @max = params.fetch("max").to_f
    @result = rand(@min..@max) 
    @back_link = "/random_form"
    @back_link_text = "Pick another random number"
    render({:template => "/random_results"})
  end
end
