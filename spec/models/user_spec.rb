require "spec_helper"

describe User do
  context "validations" do
    it "is invalid without email" do
      expect(build(:user, email: nil)).to_not be_valid
    end
  end

  describe "email" do
    it "validates email format" do
      user = build :user, email: "usernameinvalid.org"

      user.valid?

      expect(user).to be_invalid
    end
  end
end
