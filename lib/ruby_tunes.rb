require 'launchy'
# require 'pry'

module RubyTunes

  $music = {
    "rock" => ["https://youtu.be/ijGesPRut_o", "https://youtu.be/7Gr63DiEUxw", "https://youtu.be/Jesi67UJMVk", "https://youtu.be/tuHkNbk4nos", "https://youtu.be/J9jKQulDRCQ", "https://youtu.be/LE4u5qnJJj8", "https://youtu.be/55NJzOSuKuY"],
    "country" => ["https://youtu.be/3pQc25SCaNs", "https://youtu.be/3A85JE2ugiI", "https://youtu.be/qcCH6JpcK5w", "https://youtu.be/23nlI9t4TlM", "https://youtu.be/XUH5FjUX3Qo", "https://youtu.be/P7kqqmr2HWI", "https://youtu.be/Vlhy7QPFohY"],
    "rap" => ["https://www.youtube.com/watch?v=ElOo0psAs3E", "https://www.youtube.com/watch?v=u7Fw8OHnJZM", "https://www.youtube.com/watch?v=mVFKMomXMOc", "https://www.youtube.com/watch?v=v5ybdpttu40", "https://www.youtube.com/watch?v=pmdI9YdLQ_o", "https://youtu.be/yL9bRzwk0Ds", "https://youtu.be/87VaeIKXV1s", "https://youtu.be/myrXQebr488", "https://www.youtube.com/watch?v=8UhshSef0zs"],
    "pop" => ["https://youtu.be/av5JD1dfj_c","https://youtu.be/0yW7w8F2TVA","https://youtu.be/PT2_F-1esPk","https://youtu.be/2Vv-BfVoq4g","https://youtu.be/y83x7MgzWOA","https://youtu.be/k2qgadSvNyU","https://youtu.be/-BjZmE2gtdo"]
  }


  class Rock
    def self.play
      Rock.new.open_in_browser
    end

    def open_in_browser
      Launchy.open($music["rock"].sample)
    end
  end


  class Country
    def self.play
      Country.new.open_in_browser
    end

    def open_in_browser
      Launchy.open($music["country"].sample)
    end
  end


  class Rap
    def self.play
      Rap.new.open_in_browser
    end

    def open_in_browser
      Launchy.open($music["rap"].sample)
    end
  end



  class Pop
    def self.play
      Pop.new.open_in_browser
    end

    def open_in_browser
      Launchy.open($music["pop"].sample)
    end
  end


  # binding.pry

end

