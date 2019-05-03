class LoadResourceService
  def initialize(params, controller_name)
    @params = params
    @entity = controller_name.classify.constantize
  end

  def call
    @entity.find_by(id: @params[:id])
  end
end
