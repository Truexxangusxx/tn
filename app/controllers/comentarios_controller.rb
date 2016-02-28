class ComentariosController < ApplicationController


# POST /comentarios
  # POST /comentarios.json
  def create
  
    #@comentario = Comentario.new(:descripcion=>params[:descripcion], :correo=>params[:correo])
    @comentario = Comentario.new(comentario_params)

    respond_to do |format|
      if @comentario.save
        format.html do
            redirect_to '/'
        end
        format.json { render :show, status: :created, location: @comentario }
      else
        format.html { render :new }
        format.json { render json: @comentario.errors, status: :unprocessable_entity }
      end
    end
  end



  private

  def comentario_params
    params.require(:comentario).permit(:descripcion, :correo)
  end



end
