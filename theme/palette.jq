# --slurpfile palette palette.json
walk(
    select(type=="string")
    |= (
        ( split(",") as $key
        | $palette[0]?[$key[0]]? as $col
        | if $col then $col + $key[1] else null end
        ) // .
    )
)