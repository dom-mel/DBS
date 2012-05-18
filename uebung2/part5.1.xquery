<result>
<!--
Es soll die Anzahl aller Lehrhefte bestimmt und ausgegeben werden. (Anwendung von Mengenoperation)
-->
{
    let $heft := doc("lehrhefte_dbs.xml")//lehrheft
    return
            count($heft)
}
</result>
