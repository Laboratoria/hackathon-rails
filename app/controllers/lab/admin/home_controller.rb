module Lab
  module Admin
    class HomeController < ApplicationController
      before_action :valid_admin, :authenticate_user!

      def index; end
    end
  end
end
