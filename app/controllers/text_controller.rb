class TextController < ApplicationController
  def hello
    render :text => "Hello from TextController#hello"
  end
end
