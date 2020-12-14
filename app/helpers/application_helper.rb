module ApplicationHelper

    def current_user
        @current_user ||= Stylist.find_by_id(session[:stylist_id])
    end

    def is_logged_in?
        if !@current_user
            redirect_to login_path
        end

    end

end
