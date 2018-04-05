module Lab
  module Customer
    class HomeController < ApplicationController
      before_action :valid_customer, :authenticate_user!

      def index; end
    end
  end
end
