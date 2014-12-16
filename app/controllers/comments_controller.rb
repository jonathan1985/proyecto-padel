class CommentsController < ApplicationController
  layout "inicio"
  def create
    # Necesito en params[:comment]

    @palas = palas.find(params[:palas_id])
    parametros = params[:comment].permit(:content, :commenter, :user_id)

    @comment = @palas.comments.create(parametros)
    redirect_to "#{palas_path(@palas)}/comments"
  end

  def destroy
    @palas = palas.find(params[:palas_id])
    @comment = @palas.comments.find(params[:id])
    @comment.destroy
    redirect_to "#{palas_path(@palas)}/comments"
  end
end
