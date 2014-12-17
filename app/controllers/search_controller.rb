class SearchController < ApplicationController
  layout "inicio"
  def search
    @palas = Palas.search(params[:search])
  end
end
