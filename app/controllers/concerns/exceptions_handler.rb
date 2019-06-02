module ExceptionsHandler
  extend ActiveSupport::Concern

  included do
    rescue_from Pundit::NotAuthorizedError, with: :render_access_denied
  end

  private

  def render_access_denied
    render json: { error: I18n.t('errors.pundit.access_denied') }, status: :access_denied
  end
end
