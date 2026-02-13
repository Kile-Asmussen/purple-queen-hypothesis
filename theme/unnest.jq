[ . as $root
| paths as $p
| ( $root
  | getpath($p)
  | select(type == "string")
  | { ($p | join(".")) : . }
  )
]
| add