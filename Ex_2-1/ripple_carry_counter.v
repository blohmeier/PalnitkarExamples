`timescale 1ns / 1ps
//Define the top-level module called ripple carry
//counter. It instantiates 4 T-flipflops. Interconnections are
//shown in Section 2.2, 4-bit Ripple Carry Counter.
module ripple_carry_counter(q, clk, reset);
output [3:0] q;         //I/0 signals and vector declarations
                        //will be explained later.
input clk, reset;       //I/0 signals will be explained later.
//Four instances of the module T_FF are created. Each has a unique
//name.Each instance is passed a set of signals. Notice, that
//each instance is a copy of the module T_FF.
T_FF tffO(q[0],clk, reset);
T_FF tffl(q[1],q[0],reset);
T_FF tff2(q[2],q[1],reset);
T_FF tff3(q[3],q[2],reset);
endmodule
