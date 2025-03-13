program exercicio7;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  SysUtils, Math;

var
  A, B, C: Integer;

begin
  Write('Digite o valor de A: ');
  ReadLn(A);

  Write('Digite o valor de B: ');
  ReadLn(B);

  Write('Digite o valor de C: ');
  ReadLn(C);

  WriteLn(Format('%d + %d + %d = %d', [A, B, C, A + B + C]));
  WriteLn(Format('%d - %d + %d = %d', [A, B, C, A - B + C]));
  WriteLn(Format('%d - (%d + %d) = %d', [A, B, C, A - (B + C)]));
  WriteLn(Format('(%d * 2) + (%d - %d) = %d', [A, B, C, (A * 2) + (B - C)]));
  WriteLn(Format('(%d * 4) + (%d div 2) - (%d + 8) = %d', [A, C, B, (A * 4) + (C div 2) - (B + 8)]));
  WriteLn(Format('(%d div 2) + (%d div 2) + (%d div 2) = %d', [A, B, C, (A div 2) + (B div 2) + (C div 2)]));
  WriteLn(Format('%d² + %d² = %d', [A, B, Sqr(A) + Sqr(B)]));
  WriteLn(Format('%d² + 3 * %d = %d', [C, B, Sqr(C) + (3 * B)]));
  WriteLn(Format('%d MOD 2 = %d', [A, A mod 2]));
  WriteLn(Format('%d MOD 2 = %d', [B, B mod 2]));
  WriteLn(Format('%d MOD 2 = %d', [C, C mod 2]));
  ReadLn;
end.
ReadLn;
