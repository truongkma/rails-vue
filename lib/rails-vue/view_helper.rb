module Rails
  module Vue
    module ViewHelper
      def vue_component(component_name, data = {}, options = {})
        init_vuejs(component_name, data, options)
        init_component(component_name, options)
      end

      private
      def init_component(component_name, options)
        options[:id] = component_name if options[:id].nil?
        options.except!(:tag)
        content_tag(:div, "", options)
      end

      def init_vuejs(component_name, data, opt)
        props = data.each_with_object({}) do |(key, _), objs|
          objs[":#{key}"] = key
        end
        html_options = opt.reverse_merge(props)
        html_options.except!(:tag)
        vue_script = <<~VUE_SCRIPT
          $(document).ready(function(){
            new Vue({
              el: "##{opt.fetch(:id, component_name)}",
              data: function(){
                return #{data.to_json};
              },
              template: '#{content_tag(component_name, "", html_options)}'
            });
          });
        VUE_SCRIPT
        content_for :vue_assets do
          javascript_tag(vue_script)
        end
      end
    end
  end
end
