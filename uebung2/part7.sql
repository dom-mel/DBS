    SELECT 
    XMLFOREST(
    XMLAGG(XMLELEMENT("Auftrag", XMLATTRIBUTES(
        p.aufnr as "nr", p.posnr as "position"
      ),
      XMLELEMENT("artbez", b.artbez),
      XMLELEMENT("MENGE", p.menge),
      XMLELEMENT("PREIS", p.preis)
    )) as "AUFPOS") as "subresult"
    
    FROM matinf.aufpos p
    JOIN matinf.artst b ON p.artnr = b.artnr
    WHERE p.preis > 700
