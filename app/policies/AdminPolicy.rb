class AdminPolicy
  attr_reader :current_user

  def initialize(current_user:)
    @current_user = current_user
  end

  def able_to_add_or_delete?
    current_user.admin?
  end
end