# --raw-output
":root {\n" +
( to_entries
| map("  --pqh-theme-" + .key + ": " + .value + ";")
| join("\n")
) + "\n}\n\n"