class SearchController < ApplicationController
  layout "inicio"
  def search
    @palas = palas.search(params[:search])
  end
end
