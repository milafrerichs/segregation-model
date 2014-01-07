globals [
  tolerance-level
  neighbor-count
]
turtles-own [
  happy?
]

to setup
  clear-all
  set neighbor-count 8
  reset-ticks
end

to go
  find-happyness
  move-unhappy
  tick
end

to find-happyness
  ask turtles [
    let similar count (turtles-on neighbors) with [color = [color] of myself]
    set happy? similar <= (tolerance-level * neighbor-count / 100)
  ]
end

to move-unhappy
  ;;find empty patch
  ;;move to patch
end
