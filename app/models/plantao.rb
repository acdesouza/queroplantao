class Plantao < ActiveRecord::Base
  attr_accessible :contactName, :contactPhone, :how_long, :how_much, :obs, :specialty, :when, :where

  scope :to_come, where('"plantoes"."when" > ?', Date.today - 1).
                  order('"plantoes"."when" ASC, "plantoes"."how_much" DESC, "plantoes"."created_at" ASC')
  def fill_with_remuneration(remuneration)
    self.how_much = remuneration.how_much
    self.how_long = remuneration.how_long
    self.specialty= remuneration.specialty
  end
end
