<result>
{

    let $anschriften := doc("anschriften.xml")//anschrift

    for $anschrift in $anschriften
    let $heft := count(doc("lehrhefte_dbs.xml")//lehrheft/autor[familienname=$anschrift/name])
    order by $heft descending, $anschrift descending
    return
        <Autor AnzBuecher="{$heft}" AnzStaedte="{count($anschrift/stadt)}">
            {$anschrift/name}
        </Autor>
}
</result>
