select 
XMLROOT(
  XMLELEMENT("MATINF", XMLATTRIBUTES('http://www.w3.org/2001/XMLSchema' as "xmlns:xsi", 'http://www.beuth-hochschule.de/dbs2/matinf.xsd' as "xsi:nonamespaceSchemaLocation"),
    XMLAGG(
        XMLELEMENT(
          "ARTGRU",
          XMLELEMENT(
            "GRUPPE", g.gruppe  
          ),
          XMLELEMENT(
            "GRUP_TXT",
            g.grup_txt
          )
        )
    )
  ), VERSION '1.0', STANDALONE YES
)
from matinf.artgru g