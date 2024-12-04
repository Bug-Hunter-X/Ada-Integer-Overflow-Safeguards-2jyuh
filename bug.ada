```ada
function Add(A, B : Integer) return Integer is
begin
  return A + B;
end Add;

function Subtract(A, B : Integer) return Integer is
begin
  return A - B;
end Subtract;

procedure Main is
   X : Integer := 5;
   Y : Integer := 10;
   Z : Integer;
begin
   Z := Add(X, Y);
   Put_Line("Sum:" & Integer'Image(Z));

   Z := Subtract(X, Y);
   Put_Line("Difference:" & Integer'Image(Z));
end Main;
```