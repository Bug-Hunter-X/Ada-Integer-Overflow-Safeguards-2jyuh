```ada
function Add(A, B : Integer) return Integer is
   Result : Integer;
begin
   if (B > 0 and A > Integer'Last - B) then
      raise Constraint_Error;
   elsif (B < 0 and A < Integer'First - B) then
      raise Constraint_Error;
   else
      Result := A + B;
   end if;
   return Result;
end Add;

function Subtract(A, B : Integer) return Integer is
   Result : Integer;
begin
   if (B > 0 and A < Integer'First + B) then
      raise Constraint_Error;
   elsif (B < 0 and A > Integer'Last + B) then
      raise Constraint_Error;
   else
      Result := A - B;
   end if;
   return Result;
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
   --Testing Overflow
   begin
      Z := Add(Integer'Last, 1);
   exception
      when Constraint_Error =>
         Put_Line("Integer Overflow occurred!");
   end;
end Main;
```