#-*- coding: utf-8 -*-
module AdvertiserPlantoesHelper
  def group_by_when_and_how_long(plantoes)
    grouped_plantoes = {}
    plantoes_dates = plantoes.map(&:when).uniq
    plantoes_how_long = [12, 24] # Plantões de 12 ou 24 horas

    grouped_dates.each do |date|
      grouped_plantoes[date] = {
        12h => plantoes.select { |plantao| plantao.when == date && plantao.how_long == 12 }
        24h => plantoes.select { |plantao| plantao.when == date && plantao.how_long == 24 }
      }
    end

    grouped_plantoes
  end
end

#Resultado: --------------------
  #{
    #12-03-2013 =>
    #{
      #12h => {p1, p2, p7},
      #24h => {p3, p4, p5, p6}
    #}
    #13-03-2013 =>
    #{
      #12h => {},
      #24h => {p8}
    #}
  #}
#------------------------------
