
SELECT
  XMLROOT(
    XMLELEMENT(
      "MATINF",
      XMLAGG(
        XMLELEMENT(
          "ARTIKELGRUPPE",
          XMLATTRIBUTES(
            sum(st.bestand) as ANZAHL_ARTIKEL,
            sum(st.ekpreis * st.bestand) as SUM_EKPREIS,
            gru.grup_txt
          )
        )
      )
    ), VERSION '1.0', STANDALONE YES
  )
  as "result"
FROM matinf.artgru gru
JOIN matinf.artst st ON gru.gruppe = st.gruppe
GROUP BY gru.grup_txt
