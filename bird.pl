can_fly(eagle).
can_fly(sparrow).
cant_fly(penguin).

flying_bird(bird):-can_fly(bird).
cant_flying_bird(bird):-cant_fly(bird).