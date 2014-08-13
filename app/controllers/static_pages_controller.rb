class StaticPagesController < ApplicationController

  def home
    @title = "Welcome"
    @book = Book.first
  end

end
