class ShowElementController < ApplicationController
  def show
    @element = {at_num: 1, symbol: "H", name:"Hidrogênio", number: 1.0008}
    
    @information = {
      utility_img: "https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      get_image:"https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      summary:"Elemento químico de simbolo H, Com um peso atômico de 1,00794 u, o hidrogênio é o elemento mais leve da tabela periódica. 
      Sua forma monatômica (H) é a substância química mais abundante no Universo, constituindo aproximadamente 75% de toda a massa bariônica.",
      category: "diametal não metal",
      discovered_by: "Henry Cavendish",
      how_produce: "O alumínio ácido de Lewis liga-se ao oxigénio da molécula de água e o alumínio base de Lewis dissocia o 
      átomo de hidrogénio. Se o processo ocorrer uma segunda vez, envolvendo dois outros átomos de alumínio, 
      restarão dois átomos de hidrogénio, que se ligarão para formar uma molécula de hidrogénio na forma de gás (H2).",
      named_by: "Antoine Lavoisier",
      phase: "Gas",
      utility: "Ela ocorre principalmente em água e na maior parte dos compostos orgânicos e é usado na produção de amoníaco 
      e de outros produtos químicos, na hidrogenação de gorduras e óleos, e na soldagem.
      O Gás Hidrogênio (H2) é explorado para uso em motores a combustão e em células de combustível.",
      discovery_img:"https://images.findagrave.com/photos250/photos/2017/295/8279_1508761930.jpg",
      named_img: "https://www.sciencehistory.org/sites/default/files/styles/rte_full_width/public/historical_profile/lavoisier-profile.jpg?itok=10b3E-XN",
    }
    
    @properties = {
      density: 0.08988,
      boil: 20.271,
      atomic_mass: 1.008,
      melt: 13.99,
      molar_helt: 28.836,
      electron_configuration: "1s1",
		  electron_affinity: 72.769,
		  electronegativity_pauling: 2.20,
      color_name: "transparent",
      quote: "https://github.com/Bowserinator/Periodic-Table-JSON/blob/master/PeriodicTableJSON.json",
      hex_color: "#ffffff",
    }
  end
end
