
class CalculatorController < ApplicationController
  def index
    # Renders the form
  end

  def compute
    # Safely parse numbers
    a = params[:a].to_f
    b = params[:b].to_f
    op = params[:operation]

    @a, @b, @operation = a, b, op

    @result =
      case op
      when "add"      then a + b
      when "subtract" then a - b
      when "multiply" then a * b
      when "divide"   then (b.zero? ? "Error: division by zero" : a / b)
      else "Unknown operation"
      end

    render :result
  end
end
