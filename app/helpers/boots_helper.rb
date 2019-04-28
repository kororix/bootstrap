module BootsHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm'
      confirm_boots_path
    elsif action_name == 'edit'
      boot_path
    end
  end
end
