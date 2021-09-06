require "spec_helper"

describe SessionsController, type: :controller do
  describe "#create" do
    it "logs user in successfully" do
      user = create(:user, :admin)
      post :create, params: { email: user.email, password: "foobar123"  }

      expect(response).to redirect_to(root_path)
      expect(flash[:notice]).to eq("Logged in successfully")
    end    
  end
end