class HomeController < ApplicationController
  def unregistered; end

  protected

  def set_layout
    return 'landing' if action_name == 'unregistered'
    super
  end
end
