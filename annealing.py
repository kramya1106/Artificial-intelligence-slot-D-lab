# begin optimizing
self.step, self.accept = 1, 0
while self.step < self.step_max and self.t >= self.t_min:

    # get neighbor
    proposed_neighbor = self.get_neighbor()

    # check energy level of neighbor
    E_n = self.cost_func(proposed_neighbor)
    dE = E_n - self.current_energy
    
    # determine if we should accept the current neighbor
    if random() < self.safe_exp(-dE / self.t):
        self.current_energy = E_n
        self.current_state = proposed_neighbor[:]
        self.accept += 1
        
    # check if the current neighbor is best solution so far
    if E_n < self.best_energy:
        self.best_energy = E_n
        self.best_state = proposed_neighbor[:]
    
    # update some stuff
    self.t = self.update_t(self.step)
    self.step += 1
