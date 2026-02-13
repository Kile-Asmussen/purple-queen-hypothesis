":root {\n" +
( to_entries
| map("  --rqh-theme-" + .key + ": " + .value + ";")
| join("\n")
) + "}"