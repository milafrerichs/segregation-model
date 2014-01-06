breed [rich a-rich]
breed [poor a-poor]
rich own [color]
poor own [color]


to setup
  clear-all
  setup-patches
  setup-turtles
  reset-ticks
end

to happy
  ask turtles [
    set neighbor-count 8
    tolerance [count neighbors with [pcolor = [color]] / neighbor-count * 100]
    if tolerance < tolerance-level [
      move
      patch-vacant
    ]
  ]
end

to move [turtle]
  ;;find empty patch
  ;;move to patch
end
to patch-vacant [patch]
  set pcolor grey
end
