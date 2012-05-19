/* Aufgabenstellung:
 *  Es sollen alle Namen der Artikelgruppen in einem XML Dokument ausgegeben werden.
 *  Dazu ist:
 *   - die XML Preambel zu setzen
 *   - der XMLNamespace xsi mit http://www.w3.org/2001/XMLSchema anzugeben
 *  Beispiel:
 *  <?xml version="1.0" standalone="yes"?>
 *  <ARTGRU xmlns:xsi="http://www.w3.org/2001/XMLSchema">
 *    <GRUP_TXT>Gruppenname</GRUP_TXT>
 *    ...
 *  </ARTGRU>
 */
SELECT
  XMLROOT(
    XMLELEMENT(
      "ARTGRU",
      XMLATTRIBUTES('http://www.w3.org/2001/XMLSchema' AS "xmlns:xsi"),
      XMLAGG(
        XMLFOREST(gru.grup_txt)
      )
    ),
    VERSION '1.0',
    STANDALONE YES
  ) as "result"
FROM
  matinf.artgru gru