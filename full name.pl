first_name(tonyblair, tony).
first_name(georgebush, georgedubya).
second_name(tonyblair, blair).
second_name(georgebush, bush).

full_name(First, Last, FullName) :-
    first_name(FullName, First),
    second_name(FullName, Last).
