class ExampleLibController < ApplicationController
  def index
    @lib = ExampleLib.new(foo: "bar").process
  end
end