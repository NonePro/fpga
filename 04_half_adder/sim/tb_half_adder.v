`timescale 1ns/1ns
module tb_half_adder ();
    reg a;
    reg b;
    wire sum;
    wire carry;
    
    always #10 a <= {$random}  % 2;
    always #10 b <= {$random}  % 2;
    
    initial begin
        $timeformat(-9,0,"ns",6);
        $monitor("@time %t: a = %b b = %b sum = %b carry = %b",$time,a,b,sum,carry);
    end
    
    half_adder half_adder_inst(
    .a(a),
    .b(b),
    .sum(sum),
    .carray(carry)
    );
endmodule
