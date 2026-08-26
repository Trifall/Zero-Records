# kill is the only thing that reliably clears a leftover dragon - a void drop
# never took. no fixed UUID on the summon now, so a dragon mid death animation
# (kill cannot touch it) no longer collides with the next spawn, it just despawns.
execute in minecraft:the_end run kill @e[type=minecraft:ender_dragon]
