/ ca.q

Trade:([]date:1995.01.01 2000.01.02 2000.02.02 2000.03.02 2000.04.02 2000.05.01;sym:`IBM;price:100f;size:100)
Trade,:update sym:`JPM from Trade

CA:([]date:2000.01.01 2000.02.01 2000.03.01 2000.04.01;sym:`IBM;typ:`split`dividend`bonus`dividend;factor:.5 .98 .8 .97)
CA,:update sym:`JPM,factor-.01 from CA

adjust:{[x;types]
  s:distinct x`sym;
  ca:select from CA where sym in s;
  if[not types~`all;ca:select from ca where typ in types];
  ca1:update caid:i from ca;
  p:aj[`sym`date;x;ca1];
  p1:update factor1:?[caid=prev caid;1;factor] by typ from p;
  p2:update rfactor:-1_(*\)(1f,reverse factor1) by sym from p1;
  p3:update rfactor:reverse rfactor by sym from p2;
  p4:update price:price*rfactor,size:100%rfactor by sym from p3;
  p5:update factor:factor1^factor from p4;
  p6:delete factor1,caid from p5
 }