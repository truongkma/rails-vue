module Vue
  module Rails
    class Engine < ::Rails::Engine
      initializer "view_helper.engine" do |app|
        ActionView::Base.send :include, Vue::Rails::ViewHelper
      end
    end
  end
end
