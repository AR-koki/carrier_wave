require 'rails_helper'

RSpec.describe User, type: :model do
	it "user名が1文字以上10文字以内の場合登録できる" do
		user = User.new(
			name: "a" * 10,
			password: "111111",
			email: "111111@gmail.com"
		)
		expect(user).to be_valid
	end
end