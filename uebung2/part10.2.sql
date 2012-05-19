/*
  *** Selbstgestellte Aufgabe ***
  Aufgabenstellung: 
  Alle Artikel sollen in einer XML Liste angezeigt werden. Die Artikelnummer soll ein Attribut sein.
  Bezeichnung, Einkaufs- und Verkaufspreis sollen als Kindelemente dargestellt werden. Die XML Präambel
  soll angezeigt werden. Zusätzlich soll die Liste wenigstens einen XML Kommentar beinhalten.
*/
select 
  XMLROOT(
      XMLAGG(
        XMLELEMENT("Artikelliste", 
          XMLCOMMENT('Die Währung für die Preise wird leider nicht angegeben. Es könnten Euro sein ;)'),
          XMLELEMENT("Artikel", XMLATTRIBUTES(a.artnr as "nr"), 
            XMLELEMENT(
              "Bezeichnung",
              a.artbez
            ), 
            XMLELEMENT(
              "Einkaufspreis",
              a.ekpreis
            ),
            XMLELEMENT(
              "Verkaufspreis",
              a.vpreis
            )
          )
        )
      ), VERSION '1.0', STANDALONE YES
  )
from matinf.artst a