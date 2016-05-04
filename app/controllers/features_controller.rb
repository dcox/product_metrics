class FeaturesController < ApplicationController
  before_action :set_feature, only: [:edit, :update, :destroy]

  def new
    @feature = Feature.new
  end

  def edit
  end

  def create
    @feature = Feature.new(feature_params)
    @feature.user_id = current_user.id

    respond_to do |format|
      if @feature.save
        format.html { redirect_to root_path, notice: 'Feature was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @feature.update(feature_params)
        format.html { redirect_to @feature, notice: 'Feature was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @feature.destroy
    respond_to do |format|
      format.html { redirect_to features_url, notice: 'Feature was successfully destroyed.' }
    end
  end

  private
    def set_feature
      @feature = Feature.find(params[:id])
    end

    def feature_params
      params.require(:feature).permit(:name)
    end
end
