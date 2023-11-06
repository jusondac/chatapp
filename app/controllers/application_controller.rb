class ApplicationController < ActionController::Base
    helper_method :check_before

    def check_before(message)
        message.previous_message.present? && message.previous_message.user_id.eql?(message.user.id)
    end
end
