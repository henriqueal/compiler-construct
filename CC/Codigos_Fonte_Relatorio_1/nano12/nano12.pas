program nano12;

var 
    n, m, x : integer;

begin
    n := 1;
    m := 2;
    x := 5;

    while x > n do
    begin 
        if(n = m) then write(n)
        else write(0);

        x := x-1;        
    end;
end.
