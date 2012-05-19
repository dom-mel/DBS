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