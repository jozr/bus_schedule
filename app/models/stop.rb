class Stop < ActiveRecord::Base

  validates :line_id, presence: :true, numericality: :true
  validates :station_id, presence: :true, numericality: :true
end
