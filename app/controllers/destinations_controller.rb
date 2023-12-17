# frozen_string_literal: true

class DestinationsController < ApplicationController
  before_action :set_destination, only: %i[show edit update destroy]

  def index
    @destinations = Destination.all
  end

  def show; end

  def new
    @destination = Destination.new
  end

  def edit; end

  def create
    @destination = Destination.new(destination_params)

    if @destination.save
      redirect_to destination_url(@destination),
                  notice: t('controller.created_successfully', resource: Destination.model_name.human)
    else
      render :new, status: :unprocessable_entity,
                   alert: t('controller.created_unsuccessfully', resource: Destination.model_name.human)
    end
  end

  def update
    if @destination.update(destination_params)
      redirect_to destination_url(@destination),
                  notice: t('controller.updated_successfully', resource: Destination.model_name.human)
    else
      render :edit, status: :unprocessable_entity,
                    alert: t('controller.updated_unsuccessfully', resource: Destination.model_name.human)
    end
  end

  def destroy
    if @destination.destroy
      redirect_to destinations_url,
                  notice: t('controller.destroyed_successfully', resource: Destination.model_name.human)
    else
      redirect_to destinations_url,
                  alert: t('controller.destroyed_unsuccessfully', resource: Destination.model_name.human)
    end
  end

  private

  def set_destination
    @destination = Destination.find(params[:id])
  end

  def destination_params
    params.require(:destination).permit(
      :title,
      :description,
      media_attributes: %i[
        id
        alt_text
        title
        file
        _destroy
      ]
    )
  end
end
