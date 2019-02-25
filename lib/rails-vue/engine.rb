module Rails
  module Vue
    class Engine < ::Rails::Engine
      initializer "view_helper.engine" do |app|
        ActionView::Base.send :include, Rails::Vue::ViewHelper
      end
    end
  end
end
