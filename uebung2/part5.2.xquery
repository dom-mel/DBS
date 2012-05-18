<result>
<!--
Es sollen alle Lehrhefte ausgegeben werden, deren Auflagennummer echt größer als 1 ist. (Anwendung von bedingten Ausdrücken)
-->
{
    for $heft in doc("lehrhefte_dbs.xml")//lehrheft
    where $heft/auflage_nr > 1
    return
            $heft
}
</result>
