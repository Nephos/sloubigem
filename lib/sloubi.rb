#encoding: utf-8

module Sloubi
  def count_sloubi n
    return false if !n.is_a?Integer
    n.times do |i|
      puts "Sloubi #{i}"
    end
  end
end
