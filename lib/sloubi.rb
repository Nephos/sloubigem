#encoding: utf-8

module Sloubi
  class Sloubi
    #count sloubi from n to ninit. if v is true, it will be said
    def self.count n=42, ninit=1, v=false
      return 0 if !n.is_a?Integer or n < 1
      return 0 if ninit > n
      (ninit..n).each do |i|
        puts "Sloubi #{i}"
        if v == true
          if i <= 99999999999999
            `espeak "Sloubi #{i}" -a 200 -vfr`
          else
            `espeak "Je sais pas compter jusque là, moi !" -a 200 -vfr`
            return i
          end
        end
      end
      return i
    end

    #obsolet alias of count
    def self.count_sloubi n=42, ninit=1, v=false
      Sloubi::Sloubi.count n, ninit, v
    end
  end
end
