module SimpleForm
  module Inputs
    class DatetimePickerInput < StringInput
      def input
        value = object.send(attribute_name) if object.respond_to? attribute_name
        input_html_options[:value] ||= value.strftime("%Y-%m-%d %H:%M") if value.present?

        input_html_options[:type] = 'text'
        input_html_options[:data] ||= {}
        input_html_options[:data].merge!({ format: 'yyyy-MM-dd hh:mm' })

        template.content_tag :div, class: 'input-append date', data: { behavior: 'datetime-picker'} do
          input = super # leave StringInput do the real rendering
          input += template.content_tag :span, class: 'add-on' do
            template.content_tag :i, '', class: 'icon-calendar', data: { 'time-icon' => 'icon-time', 'date-icon' => 'icon-calendar' }
          end
          input
        end
      end
    end
  end
end
