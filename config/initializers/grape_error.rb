module Grape
  module DSL
    module InsideRoute

      def error!(message, status = nil, headers = nil)
        self.status(status || namespace_inheritable(:default_error_status))
        human_message = message

        if Rails.env.production?
          new_msg = []
          message[:errors].each do |msg|
            new_msg << I18n.t(msg)
          end
          human_message[:errors] = new_msg
        end

        throw :error, message: human_message, status: self.status, headers: headers
      end
    end
  end
end
