egrep '(.)\1' "$@" \
  | egrep '[aeiou].*[aeiou].*[aeiou]' \
  | egrep -v 'ab|cd|pq|xy' -c
