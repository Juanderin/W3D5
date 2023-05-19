class PolyTreeNode
require 'byebug'
    attr_reader :parent, :children, :value
  
    def initialize(value)


        @children = []

        @parent = nil
        
        @value = value

    end 


    def parent=(node)
        
        debugger
        return if @parent == node

        if !@parent.nil?
            @parent.children.delete(self)
        end 

        @parent = node

        if !node.nil? && !node.children.include?(self)
            @parent.children << self
        end


    end


    def inspect
        "#<Node:#{self.object_id} @value=#{self.value} @children=#{children_values}"
    end

end



n1 = PolyTreeNode.new("root1")
n2 = PolyTreeNode.new("root2")
n3 = PolyTreeNode.new("root3")


n3.parent = n1
n3.parent = n2