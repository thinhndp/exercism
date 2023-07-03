
class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze
  class UnsupportedOperation < StandardError
  end
  
  def self.calculate(first_operand, second_operand, operation)
    if !ALLOWED_OPERATIONS.include?(operation)
      raise UnsupportedOperation
    elsif !(first_operand.is_a? Numeric) || !(second_operand.is_a? Numeric)
      raise ArgumentError
    elsif operation == '/' && second_operand == 0
      return "Division by zero is not allowed."
    end
    result = "#{first_operand} #{operation} #{second_operand} = "
    if operation == '+'
      result + (first_operand + second_operand).to_s
    elsif operation == '/'
      result + (first_operand / second_operand).to_s
    else
      result + (first_operand * second_operand).to_s
    end
  end
end
