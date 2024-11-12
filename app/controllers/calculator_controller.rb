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
end
