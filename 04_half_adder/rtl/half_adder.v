module half_adder (input wire a,
                   input wire b,
                   output reg sum,
                   output reg carray);
    
    // a + b = carray_sum
    always @(*) begin
        sum    = a ^ b;
        carray = a & b;
    end
    
endmodule
