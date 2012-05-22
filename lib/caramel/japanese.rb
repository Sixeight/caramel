# coding: utf-8

require File.dirname(__FILE__) + '/../caramel'

class Object
  alias_method :は, :and
  alias_method :と, :and

  def です
    !!self
  end

  def ではありません
    !!!self
  end
end

module Caramel
  class ArrayHolder
    attr_reader :array, :values
    def initialize(array, values)
      @array = array
      @values = Array(values)
    end

    def を含んでいます
      values.all? {|value| array.include?(value) }
    end

    def を含んでいません
      !values.any? {|value| array.include?(value) }
    end
  end
end

class Array
  def は(args)
    Caramel::ArrayHolder.new(self, args)
  end
end

