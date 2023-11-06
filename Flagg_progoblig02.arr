use context essentials2021

include color
"For å tegne flagg skriv: flagg('bakgrunnsfarge', 'innerste kors', 'ytterste kors')"
"eller du kan skrive inn navnet til et av de nordiske landene og få opp flagget."
"I tabellen under kan du se fargekodene til de forskjellige landene"

table: Land :: String, bakgrunn :: Any, innerste_kors :: Any, ytterste_kors :: Any
  row: "Norge", color(186, 12, 47, 1), color(0, 32, 91,1), color(255, 255, 255,1)
  row: "Danmark", color(200, 16, 46, 1),color(255, 255, 255,1), color(200, 16, 46,1)
  row: "Sverige", color(0, 106, 167,1), color(254, 204, 2,1), color(254, 204, 2,1)
  row: "Finland", color(255, 255, 255,1), color(0, 47, 108,1), color(0, 47, 108,1)
  row: "Island", color(2, 82, 156,1), color(220, 30, 53,1), color(255, 255, 255,1)
  row: "Faeroyene", color(255, 255, 255,1), color(237, 41, 57,1), color(0, 101, 189,1)
end


#funksjon som deler inn flagget i seksjoner slik at man enkelt kan endre farger
fun flagg(bak, inn, ut):

#lager bakgrunn og en horisontal stripe (ytterst)
  bakgrunn= overlay(rectangle(220, 40, "solid", ut),
    rectangle(220, 160, "solid", bak))

  #lager de vertikale stripene og den innerste horisontale stripen
    vertikal= overlay(rectangle(20, 160, "solid", inn), 
      overlay(rectangle(320, 20, "solid", inn),
        rectangle(40, 160, "solid", ut)))

#Setter de to utrykkene sammen til et bilde og flytter posisjonen slik at dimensjonene blir riktig
vert= put-image(vertikal, 80, 80, bakgrunn)

vert
end

#setter inn fargene i funksjonen og gjør at man kan skrive inn navnet på landet og få det opp
Norge = flagg(color(186, 12, 47, 1), color(0, 32, 91,1), color(255, 255, 255,1))
Danmark = flagg(color(200, 16, 46, 1), color(255, 255, 255,1), color(200, 16, 46,1))
Sverige = flagg(color(0, 106, 167,1), color(254, 204, 2,1), color(254, 204, 2,1))
Finland = flagg(color(255, 255, 255,1), color(0, 47, 108,1), color(0, 47, 108,1))
Island = flagg(color(2, 82, 156,1), color(220, 30, 53,1), color(255, 255, 255,1))
Faeroyene = flagg(color(255, 255, 255,1), color(237, 41, 57,1), color(0, 101, 189,1))
