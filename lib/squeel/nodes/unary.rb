module Squeel
  module Nodes
    # A node that contains a single expression.
    class Unary

      include PredicateOperators

      # @return The expression contained in the node
      attr_reader :expr

      # Create a new Unary node.
      # @param expr The expression to contain inside the node.
      def initialize(expr)
        @expr = expr
      end

      # Object comparison
      def eql?(other)
        self.class.eql?(other.class) &&
        self.expr.eql?(other.expr)
      end

    end
  end
end
