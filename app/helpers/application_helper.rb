module ApplicationHelper

  def body_classes
    classes = [
               "#{'signline' if current_site.default_site }", 
               "#{'admin_section' if admin_section?}",
               "#{'logged_in' if signed_in?}",
               "#{'admin_user' if signed_in_as_admin?}",
               "#{'admin_box_active' if session[:admin_visible]}"
              ]    
  end

  def admin_section?
    controller.class.name.split("::").include? "Admin"
  end

  def site_color
    return "green"
  end

end
