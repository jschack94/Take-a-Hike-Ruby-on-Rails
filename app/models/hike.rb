class Hike < ApplicationRecord
    belongs_to :user
    has_many :comments, :dependent => :destroy
    has_many :commentors, :class_name => "User", through: :comments
    
    validates :name, presence: true
    validates :state, presence: true
    validates :description, presence: true
  
    scope :by_recently_added, -> { order(created_at: :desc) }
  end