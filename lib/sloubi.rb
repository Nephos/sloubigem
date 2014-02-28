#encoding: utf-8

module Sloubi
  class Sloubi
    def self.count_sloubi n=42, ninit=1, v=false
      return 0 if !n.is_a?Integer or n < 1
      return 0 if ninit > n
      (ninit..n).each do |i|
        puts "Sloubi #{i}"
        `espeak "Sloubi #{i}" -a 200 -vfr` if v == true
      end
    end
  end
end
