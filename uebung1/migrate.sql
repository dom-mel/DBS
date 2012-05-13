INSERT INTO t_gr01_buecher
SELECT isbn, titelblatt, bildgroesse, titel, text, video, videogroesse, videoformat, seitenanzahl, exemplare, leihfrist
FROM hs.buch;

INSERT INTO t_gr01_autorinnen
SELECT P.name, P.vorname, nt_gr01_voe(o_gr01_voe(AU.position, AU.isbn))
FROM hs.person P
JOIN hs.autorinnen AU ON P.name = AU.name AND P.vorname = AU.vorname;