class Plantao < ActiveRecord::Base
  attr_accessible :contactName, :contactPhone, :how_long, :how_much, :obs, :specialty, :when, :where

  scope :to_come, where('"plantoes"."when" > ?', Date.today).
                  order('"plantoes"."when" ASC, "plantoes"."how_much" DESC, "plantoes"."created_at" ASC')
end
