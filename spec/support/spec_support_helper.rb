module SpecTestHelper  
  def login_as(user)
    post "/sign_in", params: { session: { email: user.email, password: "password" } }
  end
end