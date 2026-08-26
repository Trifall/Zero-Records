# a toggle cannot enable a tower another page already has
function practice:gui/pages/home/prepare_locks
data modify storage practice:gui mark set from storage practice:gui pages[0].entries
function practice:gui/pages/home/mark_locked
function practice:gui/pages/home/disable_locked
data modify storage practice:gui pages[0].entries set from storage practice:gui mark
