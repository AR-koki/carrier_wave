require 'rails_helper'

RSpec.describe Post, type: :model do
	context "データが正しく保存される" do
		before do
			@post = Post.new
			@post.title = "Hellow WebCamp"
			@post.body = "今日も晴れです。"
			@post.save
		end
		it "全て入力してあるので保存される" do
			expect(@post).to be_valid
		end
	end
	context "データが正しく保存されない" do
	    before do
	      @post = Post.new
	      @post.title = ""
	      @post.body = "今日も晴れです。"
	      @post.save
	    end
	    it "titleが入力されていないので保存されない" do
	      expect(@post).to be_invalid
	      expect(@post.errors[:title]).to include("can't be blank")
	    end
	end
	describe "アソシエーション" do
		context "Userモデルとの関係" do
			it "1:Nとなっている" do
				expect(Post.reflect_on_association(:user).macro).to eq :belongs_to
				expect(Post.reflect_on_association(:category).macro).to eq :belongs_to
			end
		end
	end
end