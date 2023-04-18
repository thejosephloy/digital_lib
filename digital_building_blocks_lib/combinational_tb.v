module combinational_tb;

/*
parameter n = 2;
parameter m = 4;
reg [n-1:0] a;
wire [m-1:0] b;

Dec #(n,m) d1(a,b);
*/


parameter k = 4;
reg [k-1 : 0] a0, a1, a2;
reg [2:0] s;
wire [3:0] b;

Mux3 #(k) mux(a2, a1, a0, s, b);


// Test each possible input of a for decoder
/*
initial begin
    $monitor("At time %t, a = %d, b = %d", $time, a, b);
    $dumpfile("combinational_tb.vcd");
    $dumpvars(0, combinational_tb);
    # 5 a = 0;
    # 5 a = 1;
    # 5 a = 2;
    # 5 a = 3;
end
*/

initial begin
    $monitor("At time %t, a0 = %d, a1 = %d, a2 = %d, s = %d, b = %d", $time, a0, a1, a2, s, b);
    $dumpfile("combinational_tb.vcd");
    $dumpvars(0, combinational_tb);
    
    # 5
    a0 = 0;
    a1 = 0;
    a2 = 0;
    s = 0;
    
    # 5
    a0 = 1;
    a1 = 2;
    a2 = 4;
    s = 0;
    
    # 5
    s = 1;
    
    #5
    s = 2;
    
    #5 s = 4;
    
    #5
    $finish;
    
end

endmodule

