class Event < ActiveRecord::Base
  attr_accessible :description, :location, :title, :when

  has_and_belongs_to_many :users
end
