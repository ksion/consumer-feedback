class BaseProcedure
  include Rails.application.routes.url_helpers
  attr_reader :params, :session, :controller

  def initialize(controller, params = nil, session = nil)
    @controller = controller
    @params = params || controller.params
    @session = session || controller.session
  end

  def method_missing(*args, &block)
    controller.send(*args, &block)
  end

end
