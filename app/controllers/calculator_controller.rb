class CalculatorController < ApplicationController
  def home
    render({:template => "pages_templates/square_new"})
  end

  def square
    @action = "Square"
    @input = params.fetch("number").to_f
    @result = @input ** 2
    @back_link = "/square/new"
    @back_link_text = "Calculate another square"
    render({:template => "pages_templates/results"})
  end

  def results
    @params = params
    render({:template => "pages_templates/results"})
  end
end
