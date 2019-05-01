class LoadResourceService
  def initialize(user, params, controller_name)
    @user = user
    @params = params
    @controller_name = controller_name
  end

  def call
    @user.public_send(@controller_name).find_by(id: @params[:id])
  end
end
