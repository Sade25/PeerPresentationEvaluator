class MainController < ApplicationController
    def index
        if user_signed_in? && is_admin?
            redirect_to presentation_scores_path
        elsif user_signed_in?
            if student = Student.where(email: current_user.email)[0]
                redirect_to "/students/#{Student.where(email: current_user.email)[0].id}"
            end
        else
            redirect_to new_user_session_path
        end
    end
end
