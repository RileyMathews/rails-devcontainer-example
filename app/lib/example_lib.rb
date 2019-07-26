# frozen_string_literal: true

class ExampleLib
  attr_reader :params

  def initialize(params)
    @params = params
  end

  def process
    @params[:additional_param] = 'new parameter'
    @params
  end
end
