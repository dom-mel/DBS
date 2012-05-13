<result>
{
    let $avgPrice := fn:avg(doc("lehrhefte_dbs.xml")//lehrheft/preis/text())

    let $anschriften := doc("anschriften.xml")//anschrift
    let $hefte := doc("lehrhefte_dbs.xml")//lehrheft


    for $heft in $hefte,
        $anschrift in $anschriften
    where $heft/autor/familienname = $anschrift/name
    and   $heft/autor/vorname = $anschrift/vorname
    and   ($anschrift/stadt = "Berlin" or $anschrift/stadt = "Münster")
    and   $heft/preis < $avgPrice
    return
        <title avgPreis="{$heft/preis/text()}" stadt="{$anschrift/stadt/text()}">
            { $heft/titel/text() }
        </title>
}
</result>
