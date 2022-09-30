class UrlsController < ApplicationController
  def visit
		if url.present?
			create_visit! and redirect_to url.original_url, allow_other_host: true
		else
			html_not_found and return
		end

	rescue StandardError
		unprocessable_entity

  end

	private

	def url
		@url ||= Url.find_by(short_url: params[:url])
	end

	def create_visit!
		url.visits.create!(platform: browser.platform.name, browser: browser.name)
	end

	def browser
		@browser ||= Browser.new(request.headers['user-agent'])
	end
end
