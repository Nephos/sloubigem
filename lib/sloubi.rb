#encoding: utf-8

module Sloubi
  class Sloubi
    #count sloubi from n to ninit. if v is true, it will be said
    def self.count n=42, ninit=1, v=false
      return 0 if !n.is_a?Integer or n < 1
      return 0 if ninit > n
      if ninit == 0
        n.times do
          return n if Sloubi.sing(rand(1..n), v) == false
        end
      else
        (ninit..n).each do |i|
          return i if Sloubi.sing(i, v) == false
        end
      end
    end

    def self.sing i, v=false
      puts "Sloubi #{i}"
      if v == true
        if i <= 99999999999999
          `espeak "Sloubi #{i}" -a 200 -vfr`
          return true
        else
          `espeak "Je sais pas compter jusque là, moi !" -a 200 -vfr`
          return false
        end
      end
    end

    #obsolet alias of count
    def self.count_sloubi n=42, ninit=1, v=false
      Sloubi::Sloubi.count n, ninit, v
    end
  end
end
