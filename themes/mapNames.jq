walk(
    select(type=="string")
    |= (
        ( split(",") as $key
        | $names[0]?[$key[0]]? as $col
        | if $col then $col + $key[1] else null end
        ) // .
    )
)