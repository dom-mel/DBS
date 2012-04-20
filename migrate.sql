INSERT INTO t_gr01_autorinnen select name, vorname FROM hs.person;
INSERT INTO t_gr01_buecher select isbn, titelblatt, bildgroesse, titel, text, video, videogroesse, videoformat, seitenanzahl, exemplare, leihfrist FROM hs.buch;
