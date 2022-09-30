class ApplicationController < ActionController::API

  def html_not_found
    render(
      html: '<center><h2>The page you were looking for does not exit</h2></center>'.html_safe,
      status: :not_found
    )
  end

  def html_unprocessable_entity
    render(
      html: '<center><h2>Somthing went wrong</h2></center>'.html_safe,
      status: :unprocessable_entity
    )
  end
end
