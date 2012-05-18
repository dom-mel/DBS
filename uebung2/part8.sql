
SELECT
  gru.grup_txt,
  sum(st.bestand) as s1,
  sum(st.ekpreis * st.bestand) as s2
FROM matinf.artgru gru
JOIN matinf.artst st ON gru.gruppe = st.gruppe
--group by gru.gruppe
/*SELECT
  XMLAGG(
    XMLELEMENT(
      "ARTIKELGRUPPE",
      XMLATTRIBUTES(
        ... as ANZAHL_ARTIKEL,
        ... as SUM_EKPREIS
        gru.grup_txt
      )
    )
  )
FROM matinf.artgru gru
JOIN matinf.artst st ON gru.gruppe = artst.gruppe
GROUP BY st.gruppe
*/