% Define the Studies/2 and Teaches/2 predicates.
studies(charlie, csc135).
studies(olivia, csc135).
studies(jack, csc131).
studies(arthur, csc134).

teaches(kirke, csc135).
teaches(collins, csc131).
teaches(collins, csc171).
teaches(juniper, csc134).

% Define the Professor/2 predicate, which represents a relationship between a professor and a student.
professor(X, Y) :- teaches(X, C), studies(Y, C).
