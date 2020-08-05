class HomeController < ApplicationController
  def index
    @goods = Good.all
  end
end
