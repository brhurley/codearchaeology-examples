**FREE
dcl-s score int(10) inz(85);
dcl-s grade char(1);
dcl-s msg varchar(50);

select;
  when score >= 90;
    grade = 'A';
  when score >= 80;
    grade = 'B';
  when score >= 70;
    grade = 'C';
  other;
    grade = 'F';
endsl;

msg = 'Grade: ' + grade;
dsply msg;

*inlr = *on;
