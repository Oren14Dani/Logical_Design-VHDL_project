onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group {text_convert_tb
} /text_convert_tb/clk
add wave -noupdate -group {text_convert_tb
} /text_convert_tb/rst
add wave -noupdate -group {text_convert_tb
} /text_convert_tb/start
add wave -noupdate -group {text_convert_tb
} /text_convert_tb/data
add wave -noupdate -group {text_convert_tb
} /text_convert_tb/tx
add wave -noupdate -group {text_convert_tb
} /text_convert_tb/done
add wave -noupdate -group {text_convert_tb
} /text_convert_tb/sram_addr
add wave -noupdate -group {text_convert_tb
} /text_convert_tb/sram_dq
add wave -noupdate -group {text_convert_tb
} /text_convert_tb/sram_we_n
add wave -noupdate -group {text_convert_tb
} /text_convert_tb/sram_oe_n
add wave -noupdate -group {text_convert_tb
} /text_convert_tb/sram_ub_n
add wave -noupdate -group {text_convert_tb
} /text_convert_tb/sram_lb_n
add wave -noupdate -group {text_convert_tb
} /text_convert_tb/sram_ce_n
add wave -noupdate -group {text_convert_tb
} /text_convert_tb/mode
add wave -noupdate -group {text_convert_tb
} /text_convert_tb/ser_tx
add wave -noupdate -group {text_convert_tb
} /text_convert_tb/bt_ser_tx
add wave -noupdate -group {text_convert_tb
} /text_convert_tb/bt_start_tx
add wave -noupdate -group {text_convert_tb
} /text_convert_tb/tx_done
add wave -noupdate -group {text_convert_tb
} /text_convert_tb/bt_ser_rx
add wave -noupdate -group dut_text_convert /text_convert_tb/dut_text_convert/CLK
add wave -noupdate -group dut_text_convert /text_convert_tb/dut_text_convert/RST
add wave -noupdate -group dut_text_convert /text_convert_tb/dut_text_convert/SER_RX
add wave -noupdate -group dut_text_convert /text_convert_tb/dut_text_convert/SER_TX
add wave -noupdate -group dut_text_convert /text_convert_tb/dut_text_convert/SRAM_ADDR
add wave -noupdate -group dut_text_convert /text_convert_tb/dut_text_convert/SRAM_DQ
add wave -noupdate -group dut_text_convert /text_convert_tb/dut_text_convert/SRAM_WE_N
add wave -noupdate -group dut_text_convert /text_convert_tb/dut_text_convert/SRAM_OE_N
add wave -noupdate -group dut_text_convert /text_convert_tb/dut_text_convert/SRAM_CE_N
add wave -noupdate -group dut_text_convert /text_convert_tb/dut_text_convert/SRAM_UB_N
add wave -noupdate -group dut_text_convert /text_convert_tb/dut_text_convert/SRAM_LB_N
add wave -noupdate -group dut_text_convert /text_convert_tb/dut_text_convert/MODE
add wave -noupdate -group dut_text_convert /text_convert_tb/dut_text_convert/LED1
add wave -noupdate -group dut_text_convert /text_convert_tb/dut_text_convert/LED2
add wave -noupdate -group dut_text_convert /text_convert_tb/dut_text_convert/LED3
add wave -noupdate -group dut_text_convert /text_convert_tb/dut_text_convert/LED4
add wave -noupdate -group dut_text_convert /text_convert_tb/dut_text_convert/NUM_ONES
add wave -noupdate -group dut_text_convert /text_convert_tb/dut_text_convert/NUM_TENS
add wave -noupdate -group dut_text_convert /text_convert_tb/dut_text_convert/NUM_HUNDS
add wave -noupdate -group dut_text_convert /text_convert_tb/dut_text_convert/NUM_THOUS
add wave -noupdate -group dut_text_convert /text_convert_tb/dut_text_convert/rst_sig
add wave -noupdate -group dut_text_convert /text_convert_tb/dut_text_convert/data_to_mem
add wave -noupdate -group dut_text_convert /text_convert_tb/dut_text_convert/data_to_mem_wr
add wave -noupdate -group dut_text_convert /text_convert_tb/dut_text_convert/data_from_mem
add wave -noupdate -group dut_text_convert /text_convert_tb/dut_text_convert/data_from_mem_valid
add wave -noupdate -group dut_text_convert /text_convert_tb/dut_text_convert/uart_tx_done
add wave -noupdate -group dut_text_convert /text_convert_tb/dut_text_convert/chars_num
add wave -noupdate -group dut_text_convert /text_convert_tb/dut_text_convert/ones_sig
add wave -noupdate -group dut_text_convert /text_convert_tb/dut_text_convert/tenths_sig
add wave -noupdate -group dut_text_convert /text_convert_tb/dut_text_convert/hunderths_sig
add wave -noupdate -group dut_text_convert /text_convert_tb/dut_text_convert/thousands_sig
add wave -noupdate -group u1_uart /text_convert_tb/dut_text_convert/u1_uart/CLK
add wave -noupdate -group u1_uart /text_convert_tb/dut_text_convert/u1_uart/RST
add wave -noupdate -group u1_uart /text_convert_tb/dut_text_convert/u1_uart/SER_RX
add wave -noupdate -group u1_uart /text_convert_tb/dut_text_convert/u1_uart/SER_TX
add wave -noupdate -group u1_uart /text_convert_tb/dut_text_convert/u1_uart/RX_DATA
add wave -noupdate -group u1_uart /text_convert_tb/dut_text_convert/u1_uart/RX_DATA_VALID
add wave -noupdate -group u1_uart /text_convert_tb/dut_text_convert/u1_uart/TX_DATA
add wave -noupdate -group u1_uart /text_convert_tb/dut_text_convert/u1_uart/START_TX
add wave -noupdate -group u1_uart /text_convert_tb/dut_text_convert/u1_uart/TX_DONE
add wave -noupdate -group UART_RX /text_convert_tb/dut_text_convert/u1_uart/u1_UART_RX/CLK
add wave -noupdate -group UART_RX /text_convert_tb/dut_text_convert/u1_uart/u1_UART_RX/RST
add wave -noupdate -group UART_RX /text_convert_tb/dut_text_convert/u1_uart/u1_UART_RX/RX
add wave -noupdate -group UART_RX /text_convert_tb/dut_text_convert/u1_uart/u1_UART_RX/DATA
add wave -noupdate -group UART_RX /text_convert_tb/dut_text_convert/u1_uart/u1_UART_RX/DATA_VALID
add wave -noupdate -group UART_RX /text_convert_tb/dut_text_convert/u1_uart/u1_UART_RX/rst_counter
add wave -noupdate -group UART_RX /text_convert_tb/dut_text_convert/u1_uart/u1_UART_RX/t_bit_flg
add wave -noupdate -group UART_RX /text_convert_tb/dut_text_convert/u1_uart/u1_UART_RX/RX_sync
add wave -noupdate -group UART_RX /text_convert_tb/dut_text_convert/u1_uart/u1_UART_RX/Rx_idx
add wave -noupdate -group UART_RX /text_convert_tb/dut_text_convert/u1_uart/u1_UART_RX/clk_counter
add wave -noupdate -group UART_RX /text_convert_tb/dut_text_convert/u1_uart/u1_UART_RX/max_cnt
add wave -noupdate -group UART_RX /text_convert_tb/dut_text_convert/u1_uart/u1_UART_RX/fsm_state
add wave -noupdate -group UART_TX /text_convert_tb/dut_text_convert/u1_uart/u2_UART_TX/CLK
add wave -noupdate -group UART_TX /text_convert_tb/dut_text_convert/u1_uart/u2_UART_TX/RST
add wave -noupdate -group UART_TX /text_convert_tb/dut_text_convert/u1_uart/u2_UART_TX/START
add wave -noupdate -group UART_TX /text_convert_tb/dut_text_convert/u1_uart/u2_UART_TX/DATA
add wave -noupdate -group UART_TX /text_convert_tb/dut_text_convert/u1_uart/u2_UART_TX/DONE
add wave -noupdate -group UART_TX /text_convert_tb/dut_text_convert/u1_uart/u2_UART_TX/TX
add wave -noupdate -group UART_TX /text_convert_tb/dut_text_convert/u1_uart/u2_UART_TX/Tx_idx
add wave -noupdate -group UART_TX /text_convert_tb/dut_text_convert/u1_uart/u2_UART_TX/clk_counter
add wave -noupdate -group UART_TX /text_convert_tb/dut_text_convert/u1_uart/u2_UART_TX/t_bit_flg
add wave -noupdate -group UART_TX /text_convert_tb/dut_text_convert/u1_uart/u2_UART_TX/fsm_state
add wave -noupdate -group u2_controller /text_convert_tb/dut_text_convert/u2_controller/CLK
add wave -noupdate -group u2_controller /text_convert_tb/dut_text_convert/u2_controller/RST
add wave -noupdate -group u2_controller /text_convert_tb/dut_text_convert/u2_controller/SRAM_ADDR
add wave -noupdate -group u2_controller /text_convert_tb/dut_text_convert/u2_controller/SRAM_DQ
add wave -noupdate -group u2_controller /text_convert_tb/dut_text_convert/u2_controller/SRAM_WE_N
add wave -noupdate -group u2_controller /text_convert_tb/dut_text_convert/u2_controller/SRAM_OE_N
add wave -noupdate -group u2_controller /text_convert_tb/dut_text_convert/u2_controller/SRAM_CE_N
add wave -noupdate -group u2_controller /text_convert_tb/dut_text_convert/u2_controller/SRAM_UB_N
add wave -noupdate -group u2_controller /text_convert_tb/dut_text_convert/u2_controller/SRAM_LB_N
add wave -noupdate -group u2_controller /text_convert_tb/dut_text_convert/u2_controller/DATA_TO_MEM
add wave -noupdate -group u2_controller /text_convert_tb/dut_text_convert/u2_controller/DATA_TO_MEM_WR
add wave -noupdate -group u2_controller /text_convert_tb/dut_text_convert/u2_controller/DATA_FROM_MEM
add wave -noupdate -group u2_controller /text_convert_tb/dut_text_convert/u2_controller/DATA_FROM_MEM_VALID
add wave -noupdate -group u2_controller /text_convert_tb/dut_text_convert/u2_controller/UART_TX_DONE
add wave -noupdate -group u2_controller /text_convert_tb/dut_text_convert/u2_controller/MODE
add wave -noupdate -group u2_controller /text_convert_tb/dut_text_convert/u2_controller/CHARS_NUM
add wave -noupdate -group u2_controller /text_convert_tb/dut_text_convert/u2_controller/LED1
add wave -noupdate -group u2_controller /text_convert_tb/dut_text_convert/u2_controller/LED2
add wave -noupdate -group u2_controller /text_convert_tb/dut_text_convert/u2_controller/LED3
add wave -noupdate -group u2_controller /text_convert_tb/dut_text_convert/u2_controller/fsm_state
add wave -noupdate -group u2_controller /text_convert_tb/dut_text_convert/u2_controller/address_counter
add wave -noupdate -group u2_controller /text_convert_tb/dut_text_convert/u2_controller/mode_sync
add wave -noupdate -group u2_controller /text_convert_tb/dut_text_convert/u2_controller/mode_dev
add wave -noupdate -group u2_controller /text_convert_tb/dut_text_convert/u2_controller/sram_we_n_sig
add wave -noupdate -group u2_controller /text_convert_tb/dut_text_convert/u2_controller/sram_oe_n_sig
add wave -noupdate -group u3_bin2bcd /text_convert_tb/dut_text_convert/u3_bin2bcd/binIN
add wave -noupdate -group u3_bin2bcd /text_convert_tb/dut_text_convert/u3_bin2bcd/ones
add wave -noupdate -group u3_bin2bcd /text_convert_tb/dut_text_convert/u3_bin2bcd/tenths
add wave -noupdate -group u3_bin2bcd /text_convert_tb/dut_text_convert/u3_bin2bcd/hunderths
add wave -noupdate -group u3_bin2bcd /text_convert_tb/dut_text_convert/u3_bin2bcd/thousands
add wave -noupdate -group u3_bin2bcd /text_convert_tb/dut_text_convert/u3_bin2bcd/clk
add wave -noupdate -group u3_bin2bcd /text_convert_tb/dut_text_convert/u3_bin2bcd/reg_in
add wave -noupdate -group u3_bin2bcd /text_convert_tb/dut_text_convert/u3_bin2bcd/bcd_out
add wave -noupdate -group u4_bcd2seg_1 /text_convert_tb/dut_text_convert/u4_bcd2seg_1/BCD_IN
add wave -noupdate -group u4_bcd2seg_1 /text_convert_tb/dut_text_convert/u4_bcd2seg_1/D_OUT
add wave -noupdate -group u5_bcd2seg_10 /text_convert_tb/dut_text_convert/u5_bcd2seg_10/BCD_IN
add wave -noupdate -group u5_bcd2seg_10 /text_convert_tb/dut_text_convert/u5_bcd2seg_10/D_OUT
add wave -noupdate -group u6_bcd2seg_100 /text_convert_tb/dut_text_convert/u6_bcd2seg_100/BCD_IN
add wave -noupdate -group u6_bcd2seg_100 /text_convert_tb/dut_text_convert/u6_bcd2seg_100/D_OUT
add wave -noupdate -group u7_bcd2seg_1000 /text_convert_tb/dut_text_convert/u7_bcd2seg_1000/BCD_IN
add wave -noupdate -group u7_bcd2seg_1000 /text_convert_tb/dut_text_convert/u7_bcd2seg_1000/D_OUT
add wave -noupdate -group sram_memory /text_convert_tb/sram_memory/SRAM_ADDR
add wave -noupdate -group sram_memory /text_convert_tb/sram_memory/SRAM_DQ
add wave -noupdate -group sram_memory /text_convert_tb/sram_memory/SRAM_WE_N
add wave -noupdate -group sram_memory /text_convert_tb/sram_memory/SRAM_OE_N
add wave -noupdate -group sram_memory /text_convert_tb/sram_memory/SRAM_UB_N
add wave -noupdate -group sram_memory /text_convert_tb/sram_memory/SRAM_LB_N
add wave -noupdate -group sram_memory /text_convert_tb/sram_memory/SRAM_CE_N
add wave -noupdate -group sram_memory /text_convert_tb/sram_memory/mem_addr_i
add wave -noupdate -group sram_memory /text_convert_tb/sram_memory/sram_dq_in
add wave -noupdate -group sim_uart_tx_inst /text_convert_tb/sim_uart_tx_inst/START_TRANSMIT
add wave -noupdate -group sim_uart_tx_inst /text_convert_tb/sim_uart_tx_inst/SER_OUT
add wave -noupdate -group sim_uart_rx_inst /text_convert_tb/sim_uart_rx_inst/SER_IN
add wave -noupdate -group sim_uart_rx_inst /text_convert_tb/sim_uart_rx_inst/PAR_DATA
add wave -noupdate -group sim_uart_rx_inst /text_convert_tb/sim_uart_rx_inst/PAR_DATA_VALID
add wave -noupdate -group sim_uart_rx_inst /text_convert_tb/sim_uart_rx_inst/par_data_sig
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1459 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 345
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits us
update
WaveRestoreZoom {0 ps} {5644 ps}
