module Spree
  HomeController.class_eval do
    before_action :get_blocks, only: :index

    protected 
      def get_blocks 
        @blocks = Spree::Block.all 
      end
  end
end
