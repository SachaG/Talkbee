class RegistrationsController < Devise::RegistrationsController
  protected
  
  def update
    # Devise use update_with_password instead of update_attributes.
    # This is the only change we make.
    if resource.update_attributes(params[resource_name])
      set_flash_message :notice, :updated
      # Line below required if using Devise >= 1.2.0
      sign_in resource_name, resource, :bypass => true
      redirect_to after_update_path_for(resource)
    else
      clean_up_passwords(resource)
      render_with_scope :edit
    end
  end
  
  def after_sign_up_path_for(resource)
    "home#thanks"
  end
  
  def after_inactive_sign_up_path_for(resource)
    "home#thanks"
  end
end