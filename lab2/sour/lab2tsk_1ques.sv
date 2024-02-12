module lab2tsk_1ques (
    output logic y ,x ,
    input logic a ,b,c
);
 wire l,m,n,o,p; 
 not a1(l,c);
 or a2(m,a,b);
 nand a3(n,a,b);
 or  a4(o,a,b);
 xor a5(p,n,o);
 xor a6(x,l,m);
 and a7(y,p,m);
endmodule