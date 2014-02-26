class Post < ActiveRecord::Base
	belongs_to :user
	validates :user_id, presence: true
	validates :title, presence: true, length: { maximum: 150 }
	validates :description, presence: true
	validates :email, presence: true
	validates :expiration, presence: true
	validates :expiration, timeliness: { on_or_before: lambda { 30.days.from_now }, type: :date }
	validates :expiration, timeliness: { on_or_after: lambda { Date.today }, type: :date }
	end