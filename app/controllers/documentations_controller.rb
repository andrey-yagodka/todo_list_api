class DocumentationsController < ActionController::Base
  def api_v1
    render file: 'public/docs/v1.html'
  end
end
