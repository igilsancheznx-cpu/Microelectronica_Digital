module tang_hiper #(
    parameter N = 8,
    parameter M = 7
)
(   
    input logic signed [1:-N] data_in,
    //input logic signed [0:-M] coef, FIJOS DECLARAR COMO CONSTANTES LOGICAS
    output logic signed [1:-N] tang_out
);

logic signed [1:-N] x;
logic signed [1:-N] aux_out;

// Coeficientes son constantes declararlos
// NO EXISTE -0 como poner en negativo
logic signed [0:-M] a3 = 11010101;   
logic signed [0:-M] a5 = ;  

// Sincronizar el dato de entrada con el reloj
always_ff @(posedge clk, negedge rst_n)
begin

    if (~rst_n) begin
        x <= '0;
    end else begin
        x <= data_in;
    end
end

// OPERACION: cinco multiplicadores y dos sumadores 
// Combinacional
// Calcular el tiempo que tardaremos en realizar operacion -- Restriccion del ciclo de reloj

always_comb begin
    
end

// PIPELINE
// Sincronizar operaciones con el reloj a la salida de la multiplicacion
//       La multiplicacion de los coeficientes con los datos son dependientes del reloj
//       

always_ff @(posedge clk, negedge rst_n)
begin

    if (~rst_n) begin
        x <= '0;
    end else begin
        x <= data_in;
    end
end

// Sincronizar la salida de la operacion con rising clk
always_ff @(posedge clk, negedge rst_n)
begin

    if (~rst_n) begin
        tang_out <= '0;
    end else begin
        tang_out <= aux_out;
    end
end

end module
