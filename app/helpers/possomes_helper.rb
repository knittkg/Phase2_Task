module PossomesHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm'
      confirm_possomes_path
    elsif action_name == 'edit'
      possome_path
    end
  end
end
