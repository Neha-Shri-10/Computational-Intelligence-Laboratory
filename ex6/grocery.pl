% =========GROCERY SYSTEM==========

% Required to allow adding items at runtime
:- dynamic item/2.

% Initial grocery items (item, price)
item(rice, 50).
item(sugar, 40).
item(milk, 30).
item(oil, 120).
item(biscuit, 20).

% Add new item to database
add_item(Name, Price) :-
    assertz(item(Name, Price)),
    format('Item ~w added successfully at Rs ~w~n', [Name, Price]).

% Display all items
show_items :-
    item(Name, Price),
    format('~w - Rs ~w~n', [Name, Price]),
    fail.
show_items.

% Order item with quantity
order(Item, Qty, Subtotal) :-
    item(Item, Price),
    Subtotal is Price * Qty.

% Final total for two items
bill(Item1, Qty1, Item2, Qty2, Total) :-
    order(Item1, Qty1, S1),
    order(Item2, Qty2, S2),
    Total is S1 + S2.
