class MetricsController < ApplicationController
  before_action :set_metric, only: [:show, :edit, :update, :destroy]

  def index
    @metrics = Metric.all
  end

  def show
  end

  def new
    @metric = Metric.new
  end

  def edit
  end

  def create
    @metric = Metric.new(metric_params)
    @metric.user_id = current_user.id

    respond_to do |format|
      if @metric.save
        format.html { redirect_to @metric, notice: 'Metric was successfully created.' }
        format.json { render :show, status: :created, location: @metric }
      else
        format.html { render :new }
        format.json { render json: @metric.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    if @metric.user == current_user
      respond_to do |format|
        if @metric.update(metric_params)
          format.html { redirect_to @metric, notice: 'Metric was successfully updated.' }
          format.json { render :show, status: :ok, location: @metric }
        else
          format.html { render :edit }
          format.json { render json: @metric.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to root_path, notice: 'You can only edit your own metrics.' 
    end
  end

  def destroy
    if @metric.user == current_user
      @metric.destroy
      respond_to do |format|
        format.html { redirect_to metrics_url, notice: 'Metric was successfully destroyed.' }
        format.json { head :no_content }
      end
    else
      redirect_to root_path, notice: 'You can only delete your own metrics.'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_metric
      @metric = Metric.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def metric_params
      params.require(:metric).permit(:name, :definition, :feature_id)
    end
end
