class Plantao < ActiveRecord::Base
  attr_accessible :contactName, :contactPhone, :how_long, :how_much, :obs, :specialty, :when, :where
end
