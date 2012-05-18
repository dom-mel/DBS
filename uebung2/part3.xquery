<result>
{
    for $heft in doc("lehrhefte_dbs.xml")//lehrheft/titel[@nr]
    return
        <lehrheft nr="{$heft/attribute::nr}">
            <datum>{$heft/../datum}</datum>
            <titel auflage="{$heft/../auflage_nr}">{$heft}</titel>
            <autoren>{count($heft/../autor)}</autoren>
        </lehrheft>
}
</result>
