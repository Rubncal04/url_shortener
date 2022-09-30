class Api::V1::UrlsController < ApplicationController
  before_action :set_url, only: :show

  def create
    @url = Url.new url_params

    @url.save!

  rescue StandardError => e
      render json: { message: 'Something went wrong', error: e.message }, status: :unprocessable_entity
  end

  def show
  end

  private

  def set_url
    @url = Url.find(params[:id])
  end

  def url_params
    params.require(:url).permit(:original_url)
  end
end
