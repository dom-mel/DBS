<result>
{
    for $heft in doc("lehrhefte_dbs.xml")//lehrheft
    let $stadt := doc("anschriften.xml")//anschrift[name=$heft/autor/familienname]
    where $heft/preis >= 15
    return
        <teuer>
            {$stadt/stadt}
            <titel nr="{$heft/auflage_nr}">{$heft/titel/text()}</titel>
            <preis>{$heft/preis}</preis>
        </teuer>
}
{
    for $heft in doc("lehrhefte_dbs.xml")//lehrheft
    let $stadt := doc("anschriften.xml")//anschrift[name=$heft/autor/familienname]
    where $heft/preis < 15 and $heft/preis > 10
    return
        <mittel>
            {$stadt/stadt}
            <titel nr="{$heft/auflage_nr}">{$heft/titel/text()}</titel>
            <preis>{$heft/preis}</preis>
        </mittel>
}
{
    for $heft in doc("lehrhefte_dbs.xml")//lehrheft
    let $stadt := doc("anschriften.xml")//anschrift[name=$heft/autor/familienname]
    where $heft/preis <= 10
    return
        <preiswert>
            {$stadt/stadt}
            <titel nr="{$heft/auflage_nr}">{$heft/titel/text()}</titel>
            <preis>{$heft/preis}</preis>
        </preiswert>
}
</result>
