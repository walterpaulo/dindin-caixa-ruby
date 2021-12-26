class PedidoProdudosController < ApplicationController
  before_action :set_pedido_produdo, only: %i[ show edit update destroy ]

  # GET /pedido_produdos or /pedido_produdos.json
  def index
    @pedido_produdos = PedidoProdudo.all
  end

  # GET /pedido_produdos/1 or /pedido_produdos/1.json
  def show
  end

  # GET /pedido_produdos/new
  def new
    @pedido_produdo = PedidoProdudo.new
  end

  # GET /pedido_produdos/1/edit
  def edit
  end

  # POST /pedido_produdos or /pedido_produdos.json
  def create
    @pedido_produdo = PedidoProdudo.new(pedido_produdo_params)

    respond_to do |format|
      if @pedido_produdo.save
        format.html { redirect_to pedido_produdo_url(@pedido_produdo), notice: "Pedido produdo was successfully created." }
        format.json { render :show, status: :created, location: @pedido_produdo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pedido_produdo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pedido_produdos/1 or /pedido_produdos/1.json
  def update
    respond_to do |format|
      if @pedido_produdo.update(pedido_produdo_params)
        format.html { redirect_to pedido_produdo_url(@pedido_produdo), notice: "Pedido produdo was successfully updated." }
        format.json { render :show, status: :ok, location: @pedido_produdo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pedido_produdo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pedido_produdos/1 or /pedido_produdos/1.json
  def destroy
    @pedido_produdo.destroy

    respond_to do |format|
      format.html { redirect_to pedido_produdos_url, notice: "Pedido produdo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pedido_produdo
      @pedido_produdo = PedidoProdudo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pedido_produdo_params
      params.require(:pedido_produdo).permit(:pedido, :produto_id, :valor)
    end
end
