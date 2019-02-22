module Vue
  module Rails
    module ViewHelper
      def vue_component(component_name, data = {}, options = {})
        init_component(component_name, data, options) + init_vuejs(component_name, data, options)
      end

      private
      def init_component(component_name, data, opt)
        props = data.inject({}) do |objs, (key, _)|
          objs[":#{key}"] = key
          objs
        end

        html_options = opt.reverse_merge(id: component_name)

        content_tag :div, html_options do
          content_tag component_name, "", props
        end
      end

      def init_vuejs(component_name, data, opt)
        vue_script = <<~VUE_SCRIPT
            $(document).ready(function(){
              new Vue({
                el: "##{opt.fetch(:id, component_name)}",
                data: function(){
                  return #{data.to_json};
                }
              });
            });
          VUE_SCRIPT
        javascript_tag(vue_script)
      end
    end
  end
end
