select
  XMLELEMENT("kunde",
    XMLATTRIBUTES(v.name as "betreuer"),
    XMLELEMENT("name", k.firma),
    XMLELEMENT("ort", k.ort),
    XMLELEMENT("umsatz", k.umshaben)) AS "result"

FROM matinf.kdst k
JOIN matinf.vert v ON v.vertreter = k.vertreter
WHERE k.umshaben != 0
ORDER BY k.umshaben;