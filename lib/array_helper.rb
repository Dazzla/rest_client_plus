module RestClientPlus

  module ArrayHelper

    def self.unwrap_from_array(operand)
      operand = operand[0] if operand.respond_to?(:map!)
      operand
    end

  end

end

