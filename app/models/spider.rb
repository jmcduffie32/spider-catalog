class Spider < ActiveRecord::Base
	validates :species, presence: true
	validates :description, presence: true
	default_scope -> { order(created_at: :desc)}
end
