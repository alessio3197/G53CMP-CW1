let
    var x: Integer
in
    begin
        repeat
            begin
                x := x + 1
            end
        until x > 42;
        putint(x)
    end