#encoding: utf-8

module Sloubi
  class Sloubi
    def self.count_sloubi n=42, v=false
      return false if !n.is_a?Integer or n < 1
      (1..n).each do |i|
        puts "Sloubi #{i}"
        `espeak "Sloubi #{i}" -a 200 -vfr` if v == true
      end
    end
  end
end
