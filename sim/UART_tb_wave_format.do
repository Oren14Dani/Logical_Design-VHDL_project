onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group UART_tb /uart_tb/clk
add wave -noupdate -group UART_tb /uart_tb/rst
add wave -noupdate -group UART_tb /uart_tb/start
add wave -noupdate -group UART_tb /uart_tb/data
add wave -noupdate -group UART_tb /uart_tb/tx
add wave -noupdate -group UART_tb /uart_tb/done
add wave -noupdate -group UART_tb /uart_tb/start_transmit
add wave -noupdate -group UART_tb /uart_tb/uart_ser_rx
add wave -noupdate -group UART_tb /uart_tb/uart_ser_tx
add wave -noupdate -group dut_UART_TOP /uart_tb/dut_UART_TOP/CLK
add wave -noupdate -group dut_UART_TOP /uart_tb/dut_UART_TOP/RST
add wave -noupdate -group dut_UART_TOP /uart_tb/dut_UART_TOP/SER_RX
add wave -noupdate -group dut_UART_TOP /uart_tb/dut_UART_TOP/SER_TX
add wave -noupdate -group dut_UART_TOP /uart_tb/dut_UART_TOP/RX_DATA
add wave -noupdate -group dut_UART_TOP /uart_tb/dut_UART_TOP/RX_DATA_VALID
add wave -noupdate -group dut_UART_TOP /uart_tb/dut_UART_TOP/TX_DATA
add wave -noupdate -group dut_UART_TOP /uart_tb/dut_UART_TOP/START_TX
add wave -noupdate -group dut_UART_TOP /uart_tb/dut_UART_TOP/TX_DONE
add wave -noupdate -group u1_UART_RX /uart_tb/dut_UART_TOP/u1_UART_RX/CLK
add wave -noupdate -group u1_UART_RX /uart_tb/dut_UART_TOP/u1_UART_RX/RST
add wave -noupdate -group u1_UART_RX /uart_tb/dut_UART_TOP/u1_UART_RX/RX
add wave -noupdate -group u1_UART_RX /uart_tb/dut_UART_TOP/u1_UART_RX/DATA
add wave -noupdate -group u1_UART_RX /uart_tb/dut_UART_TOP/u1_UART_RX/DATA_VALID
add wave -noupdate -group u1_UART_RX /uart_tb/dut_UART_TOP/u1_UART_RX/enb_dev
add wave -noupdate -group u1_UART_RX /uart_tb/dut_UART_TOP/u1_UART_RX/RX_dev
add wave -noupdate -group u1_UART_RX /uart_tb/dut_UART_TOP/u1_UART_RX/t_bit_flg
add wave -noupdate -group u1_UART_RX /uart_tb/dut_UART_TOP/u1_UART_RX/RX_sync
add wave -noupdate -group u1_UART_RX /uart_tb/dut_UART_TOP/u1_UART_RX/Rx_idx
add wave -noupdate -group u1_UART_RX /uart_tb/dut_UART_TOP/u1_UART_RX/clk_counter
add wave -noupdate -group u1_UART_RX /uart_tb/dut_UART_TOP/u1_UART_RX/max_cnt
add wave -noupdate -group u1_UART_RX /uart_tb/dut_UART_TOP/u1_UART_RX/fsm_state
add wave -noupdate -group u2_UART_TX /uart_tb/dut_UART_TOP/u2_UART_TX/CLK
add wave -noupdate -group u2_UART_TX /uart_tb/dut_UART_TOP/u2_UART_TX/RST
add wave -noupdate -group u2_UART_TX /uart_tb/dut_UART_TOP/u2_UART_TX/START
add wave -noupdate -group u2_UART_TX /uart_tb/dut_UART_TOP/u2_UART_TX/DATA
add wave -noupdate -group u2_UART_TX /uart_tb/dut_UART_TOP/u2_UART_TX/DONE
add wave -noupdate -group u2_UART_TX /uart_tb/dut_UART_TOP/u2_UART_TX/TX
add wave -noupdate -group u2_UART_TX /uart_tb/dut_UART_TOP/u2_UART_TX/Tx_idx
add wave -noupdate -group u2_UART_TX /uart_tb/dut_UART_TOP/u2_UART_TX/clk_counter
add wave -noupdate -group u2_UART_TX /uart_tb/dut_UART_TOP/u2_UART_TX/t_bit_flg
add wave -noupdate -group u2_UART_TX /uart_tb/dut_UART_TOP/u2_UART_TX/start_dev
add wave -noupdate -group u2_UART_TX /uart_tb/dut_UART_TOP/u2_UART_TX/fsm_state
add wave -noupdate -group SIM_RX /uart_tb/sim_uart_rx_inst/SER_IN
add wave -noupdate -group SIM_RX -radix hexadecimal -childformat {{/uart_tb/sim_uart_rx_inst/PAR_DATA(7) -radix binary} {/uart_tb/sim_uart_rx_inst/PAR_DATA(6) -radix binary} {/uart_tb/sim_uart_rx_inst/PAR_DATA(5) -radix binary} {/uart_tb/sim_uart_rx_inst/PAR_DATA(4) -radix binary} {/uart_tb/sim_uart_rx_inst/PAR_DATA(3) -radix binary} {/uart_tb/sim_uart_rx_inst/PAR_DATA(2) -radix binary} {/uart_tb/sim_uart_rx_inst/PAR_DATA(1) -radix binary} {/uart_tb/sim_uart_rx_inst/PAR_DATA(0) -radix binary}} -expand -subitemconfig {/uart_tb/sim_uart_rx_inst/PAR_DATA(7) {-height 15 -radix binary} /uart_tb/sim_uart_rx_inst/PAR_DATA(6) {-height 15 -radix binary} /uart_tb/sim_uart_rx_inst/PAR_DATA(5) {-height 15 -radix binary} /uart_tb/sim_uart_rx_inst/PAR_DATA(4) {-height 15 -radix binary} /uart_tb/sim_uart_rx_inst/PAR_DATA(3) {-height 15 -radix binary} /uart_tb/sim_uart_rx_inst/PAR_DATA(2) {-height 15 -radix binary} /uart_tb/sim_uart_rx_inst/PAR_DATA(1) {-height 15 -radix binary} /uart_tb/sim_uart_rx_inst/PAR_DATA(0) {-height 15 -radix binary}} /uart_tb/sim_uart_rx_inst/PAR_DATA
add wave -noupdate -group SIM_RX /uart_tb/sim_uart_rx_inst/PAR_DATA_VALID
add wave -noupdate -group SIM_RX /uart_tb/sim_uart_rx_inst/par_data_sig
add wave -noupdate -group SIM_TX /uart_tb/sim_uart_tx_inst/START_TRANSMIT
add wave -noupdate -group SIM_TX /uart_tb/sim_uart_tx_inst/SER_OUT
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 5} {2263800000 ps} 0} {{Cursor 2} {979104030000 ps} 0} {{Cursor 3} {416650000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 5
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits us
update
WaveRestoreZoom {0 ps} {11550 us}
