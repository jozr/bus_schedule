require 'rails_helper'

describe Stop do

  it { should validate_presence_of :line_id }
  it { should validate_presence_of :station_id }

  it { should validate_numericality_of :line_id }
  it { should validate_numericality_of :station_id }

end
