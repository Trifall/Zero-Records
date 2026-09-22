# Zero Records

Add-on for Mescht's Zero Practice (1.2.1 and 1.2.2) and the Zero mode in
Dibedy's MCSR Practice 2.0.0. Minecraft Java 1.16.1 only, it won't load on
anything newer.

Roughly what it adds:

- a Zero Cycle Archive that keeps every kill: times, approach, angle, the lot
- a flydown predictor: right after the kill it simulates the rest of the flight
  and prints the predicted finish time, so you don't have to wait for it
- extra settings pages on top of the base ones: Dragon (Fly Chance, Fireball
  Chance, On Crystal Break, Vanilla End Entry), Info (Timing Tracker and
  friends) and a Custom Spawns pool

## Installing

Drop the zip (or the folder) into the world's `datapacks` folder and make sure
it sits above the base Zero pack, and above LobbySystem if you're on MCSR. Then
`/reload`. Don't remove the base packs, this only overrides parts of them.

On MCSR `/trigger zero` and `/trigger hub` work like before. The pack keeps its
spot above ZeroPractice when you come back, does nothing while you're in another
mode, and drops any pending dragon spawn or teleport when you switch. Records
and settings stick around between visits.

Zero 1.2.1 keeps its own loadouts, there's nothing to migrate. It also gets the
path tracer 1.2.1 is missing and the timer display fix.

## Removing it

Run `/function zeroboard:settings/restore_chain_length` before you take the pack
out. The predictor raises maxCommandChainLength and that puts it back.

Zero Natural End is a separate add-on, you don't need it for this one.
