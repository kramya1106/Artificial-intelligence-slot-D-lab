
class State:
    Clean = 0
    Dirty = 1


class Action:
    Suck = 0
    Left = 1
    Right = 2


class Environment:
    def _init_(self, world, pos):
        self.world = world
        self.pos = pos

   
    def is_dirty(self):
        return self.world[self.pos] == State.Dirty

    
    def suck(self):
        self.world[self.pos] = State.Clean

   
    def move_left(self):
        self.pos = max(0, self.pos - 1)

    
    def move_right(self):
        self.pos = min(len(self.world) - 1, self.pos + 1)


class Agent:
    def _init_(self, env):
        self.env = env

   
    def run(self):
        while True:
            if self.env.is_dirty():
                self.env.suck()
            elif self.env.pos > 0:
                self.env.move_left()
            else:
                self.env.move_right()


world = [State.Dirty, State.Clean, State.Dirty, State.Clean, State.Dirty]
env = Environment(world, pos=2)
agent = Agent(env)


agent.run()
