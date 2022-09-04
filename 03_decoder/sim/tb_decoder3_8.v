`timescale 1ns/1ns
module tb_decoder3_8 ();
    // wire define
    wire [7:0] out;
    
    // reg define
    reg in_1;
    reg in_2;
    reg in_3;
    
    // init variable
    initial begin
        in_1 <= 1'b0;
        in_2 <= 1'b0;
        in_3 <= 1'b0;
    end
    always #10 in_1 <= {$random} % 2;
    always #10 in_2 <= {$random} % 2;
    always #10 in_3 <= {$random} % 2;
    
    initial begin
        $timeformat(-9,0,"ns",6);
        $monitor("@time %t: in_1 = %b in_2 = %b in_3 = %b out = %b",$time,in_1,in_2,in_3,out);
    end
    
    decoder3_8 decoder3_8_inst(
    .in1(in_1),
    .in2(in_2),
    .in3(in_3),
    .out(out)
    );
    
endmodule
