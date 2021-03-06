class HomeController < ApplicationController
  
  
  def index
    
    @elements = [
    {at_num: 1, symbol: "H", name:"Hidrogênio", number: 1.0008}, 
    {at_num: 2, symbol: "He", name:"Hélio", number: 4.0026},
    {at_num: 3, symbol: "Li", name:"Lítio", number: 6.94}, 
    {at_num: 4, symbol: "Be", name:"Berílio", number: 9.012},
    {at_num: 5, symbol: "B", name:"Boro", number: 10.81}, 
    {at_num: 6, symbol: "C", name:"Carbono", number: 12.01},
    {at_num: 7, symbol: "N", name:"Nitrogênio", number: 14.01}, 
    {at_num: 8, symbol: "O", name:"Oxigênio", number: 16.00},
    {at_num: 9, symbol: "F", name:"Flúor", number: 19.00}, 
    {at_num: 10, symbol: "Ne", name:"Neônio", number: 20.18},
    {at_num: 11, symbol: "Na", name:"Sódio", number: 22.99},
    {at_num: 12, symbol: "Mg", name:"Magnésio", number: 24.31}, 
    {at_num: 13, symbol: "Al", name:"Alumínio", number: 26.98},
    {at_num: 14, symbol: "Si", name:"Silício", number: 28.09}, 
    {at_num: 15, symbol: "P", name:"Fósforo", number: 30.97},
    {at_num: 16, symbol: "S", name:"Enxofre", number: 32.07}, 
    {at_num: 17, symbol: "Cl", name:"Cloro", number: 35.45},
    {at_num: 18, symbol: "Ar", name:"Argônio", number: 39.95},
    {at_num: 19, symbol: "K", name:"Potássio", number: 39.10}, 
    {at_num: 20, symbol: "Ca", name:"Cálcio", number: 40.08},
    {at_num: 21, symbol: "Sc", name:"Escândio", number: 44.96}, 
    {at_num: 22, symbol: "Ti", name:"Titânio", number: 47.90},
    {at_num: 23, symbol: "V", name:"Vanádio", number: 50.94}, 
    {at_num: 24, symbol: "Cr", name:"Cromo", number: 51.97},
    {at_num: 25, symbol: "Mn", name:"Manganês", number: 54.94}, 
    {at_num: 26, symbol: "Fe", name:"Ferro", number: 55.85},
    {at_num: 27, symbol: "Co", name:"Cobalto", number: 58.93}, 
    {at_num: 28, symbol: "Ni", name:"Níquel", number: 58.71},
    {at_num: 29, symbol: "Cu", name:"Cobre", number: 63.44},
    {at_num: 30, symbol: "Zn", name:"Zinco", number: 65.38}, 
    {at_num: 31, symbol: "Ga", name:"Gálio", number: 69.72},
    {at_num: 32, symbol: "Ge", name:"Germânio", number: 72.59}, 
    {at_num: 33, symbol: "As", name:"Arsênio", number: 74.92},
    {at_num: 34, symbol: "Se", name:"Selênio", number: 78.96}, 
    {at_num: 35, symbol: "Br", name:"Bromo", number: 79.90},
    {at_num: 36, symbol: "Kr", name:"Criptonio", number: 83.80},
    {at_num: 37, symbol: "Rb", name:"Rubídio", number: 85.47}, 
    {at_num: 38, symbol: "Sr", name:"Estrôncio", number: 87.62},
    {at_num: 39, symbol: "Y", name:"Ítrio", number: 88.91}, 
    {at_num: 40, symbol: "Zr", name:"Zircônio", number: 91.22},
    {at_num: 41, symbol: "Nb", name:"Nióbio", number: 92.91}, 
    {at_num: 42, symbol: "Mo", name:"Molibdênio", number: 95.94},
    {at_num: 43, symbol: "Tc", name:"Tecnécio", number: 98}, 
    {at_num: 44, symbol: "Ru", name:"Rutênio", number: 101.07},
    {at_num: 45, symbol: "Rh", name:"Ródio", number: 102.91}, 
    {at_num: 46, symbol: "Pd", name:"Paládio", number: 106.42},
    {at_num: 47, symbol: "Ag", name:"Prata", number: 107.87},
    {at_num: 48, symbol: "Cd", name:"Cádmio", number: 112.41}, 
    {at_num: 49, symbol: "In", name:"Índio", number: 114.82},
    {at_num: 50, symbol: "Sn", name:"Estanho", number: 118.69}, 
    {at_num: 51, symbol: "Sb", name:"Antimônio", number: 121.75},
    {at_num: 52, symbol: "Te", name:"Telúrio", number: 127.60}, 
    {at_num: 53, symbol: "I", name:"Iôdo", number: 126.90},
    {at_num: 54, symbol: "Xe", name:"Xenônio", number: 131.30},
    {at_num: 55, symbol: "Cs", name:"Césio", number: 132.91}, 
    {at_num: 56, symbol: "Ba", name:"Bário", number: 137.33},
    {at_num: 57, symbol: "La", name:"Lantânio", number: 138.91}, 
    {at_num: 58, symbol: "Ce", name:"Cério", number: 140.12},
    {at_num: 59, symbol: "Pr", name:"Praseodímio", number: 140.91}, 
    {at_num: 60, symbol: "Nd", name:"Neodímio", number: 144.24},
    {at_num: 61, symbol: "Pm", name:"Promécio", number: 145}, 
    {at_num: 62, symbol: "Sm", name:"Samário", number: 150.36},
    {at_num: 63, symbol: "Eu", name:"Európio", number: 151.96}, 
    {at_num: 64, symbol: "Gd", name:"Gadolínio", number: 157.25},
    {at_num: 65, symbol: "Tb", name:"Térbio", number: 158.93},
    {at_num: 66, symbol: "Dy", name:"Disprósio", number: 162.50}, 
    {at_num: 67, symbol: "Ho", name:"Hólmio", number: 164.93},
    {at_num: 68, symbol: "Er", name:"Érbio", number: 167.26}, 
    {at_num: 69, symbol: "Tm", name:"Túlio", number: 168.93},
    {at_num: 70, symbol: "Yb", name:"Itérbio", number: 173.04}, 
    {at_num: 71, symbol: "Lu", name:"Lutécio", number: 174.96},
    {at_num: 72, symbol: "Hf", name:"Háfnio", number: 178.49},
    {at_num: 73, symbol: "Ta", name:"Tântalo", number: 180.95}, 
    {at_num: 74, symbol: "W", name:"Tungstênio", number: 183.85},
    {at_num: 75, symbol: "Re", name:"Rênio", number: 186.21}, 
    {at_num: 76, symbol: "Os", name:"Ósmio", number: 190.23},
    {at_num: 77, symbol: "Ir", name:"Irídio", number: 192.22}, 
    {at_num: 78, symbol: "Pt", name:"Platina", number: 195.09},
    {at_num: 79, symbol: "Au", name:"Ouro", number: 196.97}, 
    {at_num: 80, symbol: "Hg", name:"Mercúrio", number: 200.59},
    {at_num: 81, symbol: "Tl", name:"Tálio", number: 204.37}, 
    {at_num: 82, symbol: "Pb", name:"Chumbo", number: 207.20},
    {at_num: 83, symbol: "Bi", name:"Bismuto", number: 208.98},
    {at_num: 84, symbol: "Po", name:"Polônio", number: 209}, 
    {at_num: 85, symbol: "At", name:"Astato", number: 210},
    {at_num: 86, symbol: "Rn", name:"Radônio", number: 222},
    {at_num: 87, symbol: "Fr", name:"Frâncio", number: 223}, 
    {at_num: 88, symbol: "Ra", name:"Rádio", number: 226},
    {at_num: 89, symbol: "Ac", name:"Actínio", number: 227}, 
    {at_num: 90, symbol: "Th", name:"Tório", number: 232},
    {at_num: 91, symbol: "Pa", name:"Protactínio", number: 231}, 
    {at_num: 92, symbol: "U", name:"Urânio", number: 238},
    {at_num: 93, symbol: "Np", name:"Netúnio", number: 237}, 
    {at_num: 94, symbol: "Pu", name:"Plutônio", number: 244},
    {at_num: 95, symbol: "Am", name:"Américio", number: 243}, 
    {at_num: 96, symbol: "Cm", name:"Cúrio", number: 247},
    {at_num: 97, symbol: "Bk", name:"Berquélio", number: 247},
    {at_num: 98, symbol: "Cf", name:"Califórnio", number: 251}, 
    {at_num: 99, symbol: "Es", name:"Einstênio", number: 254},
    {at_num: 100, symbol: "Fm", name:"Férmio", number: 257}, 
    {at_num: 101, symbol: "Md", name:"Mendelévio", number: 258},
    {at_num: 102, symbol: "No", name:"Nobélio", number: 259}, 
    {at_num: 103, symbol: "Lr", name:"Laurêncio", number: 260},
    {at_num: 104, symbol: "Rf", name:"Rutherfórdio", number: 265},
    {at_num: 105, symbol: "Db", name:"Dúbnio", number: 268}, 
    {at_num: 106, symbol: "Sg", name:"Seabórguio", number: 271},
    {at_num: 107, symbol: "Bh", name:"Bóhrio", number: 270}, 
    {at_num: 108, symbol: "Hs", name:"Hásio", number: 277},
    {at_num: 109, symbol: "Mt", name:"Meitnério", number: 276}, 
    {at_num: 110, symbol: "Ds", name:"Darmstádio", number: 281},
    {at_num: 111, symbol: "Rg", name:"Roentgênio", number: 280}, 
    {at_num: 112, symbol: "Cn", name:"Copernício", number: 285},
    {at_num: 113, symbol: "Nh", name:"Nihônio", number: 284.18}, 
    {at_num: 114, symbol: "Fl", name:"Flerovio", number: 289.19},
    {at_num: 115, symbol: "Mc", name:"Moscóvio", number: 288.19},
    {at_num: 116, symbol: "Lv", name:"Livermório", number: 293}, 
    {at_num: 117, symbol: "Ts", name:"Tenessino", number: 294},
    {at_num: 118, symbol: "Og", name:"Oganessono", number: 294}
    ]
  end
  
  
end
