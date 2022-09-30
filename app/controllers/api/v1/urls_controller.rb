class Api::V1::UrlsController < ApplicationController
  def create
    @url = Url.new url_params

    @url.save!

  rescue StandardError => e
      render json: { message: 'Something went wrong', error: e.message }, status: :unprocessable_entity
  end

  private

  def url_params
    params.require(:url).permit(:original_url)
  end
end
