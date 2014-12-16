class EpisodesController < ApplicationController
  layout "inicio"

  def index
  end

  def create
		@palas = palas.find(params[:palas_id])
		parametros = params.require(:episode).permit(:nombre, :numero_temporada, :numero_episodio)
		puts parametros
		@episode = @palas.episodes.create(parametros)
		redirect_to "#{palas_path(@palas)}/episodes"
   end
   def episode_params
		params.require(:episode).permit(:nombre, :numero_temporada, :numero_episodio)
   end

end
