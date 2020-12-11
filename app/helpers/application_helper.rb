module ApplicationHelper

    def current_user
        @current_user ||= Stylist.find_by_id(session[:stylist_id])
    end

end
