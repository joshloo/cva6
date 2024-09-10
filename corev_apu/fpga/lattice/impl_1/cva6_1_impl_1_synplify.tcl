#-- Lattice Semiconductor Corporation Ltd.
#-- Synplify OEM project file

#device options
set_option -technology LAV-AT
set_option -part LAV_AT_E70ES1
set_option -package LFG676C
set_option -speed_grade -1
#compilation/mapping options
set_option -symbolic_fsm_compiler true
set_option -resource_sharing true

#use verilog standard option
set_option -vlog_std sysv

#map options
set_option -frequency 200
set_option -maxfan 1000
set_option -auto_constrain_io 0
set_option -retiming false; set_option -pipe true
set_option -force_gsr false
set_option -compiler_compatible 0


set_option -default_enum_encoding default

#timing analysis options



#automatic place and route (vendor) options
set_option -write_apr_constraint 1

#synplifyPro options
set_option -fix_gated_and_generated_clocks 0
set_option -update_models_cp 0
set_option -resolve_multiple_driver 0


set_option -rw_check_on_ram 0
set_option -seqshift_no_replicate 0
set_option -automatic_compile_point 1

#-- set any command lines input by customer

set_option -dup false
set_option -disable_io_insertion false
add_file -constraint {/home/anonymous/lscc/radiant/2024.1/scripts/tcl/flow/radiant_synplify_vars.tcl}
add_file -verilog {/home/anonymous/lscc/radiant/2024.1/ip/pmi/pmi_lav-at.v}
add_file -vhdl -lib pmi {/home/anonymous/lscc/radiant/2024.1/ip/pmi/pmi_lav-at.vhd}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/vendor/pulp-platform/fpga-support/rtl/SyncDpRam.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/vendor/pulp-platform/fpga-support/rtl/AsyncDpRam.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/vendor/pulp-platform/fpga-support/rtl/AsyncThreePortRam.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/include/config_pkg.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/include/cv32a6_imac_sv0_config_pkg.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/include/riscv_pkg.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/include/ariane_pkg.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/vendor/pulp-platform/axi/src/axi_pkg.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/include/wt_cache_pkg.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/include/std_cache_pkg.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/include/instr_tracer_pkg.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/include/build_config_pkg.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cvxif_compressed_if_driver.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cvxif_issue_register_commit_if_driver.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cvxif_example/include/cvxif_instr_pkg.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cvxif_fu.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cvxif_example/cvxif_example_coprocessor.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cvxif_example/instr_decoder.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cvxif_example/compressed_instr_decoder.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cvxif_example/copro_alu.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/vendor/pulp-platform/common_cells/src/cf_math_pkg.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/vendor/pulp-platform/common_cells/src/fifo_v3.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/vendor/pulp-platform/common_cells/src/lfsr.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/vendor/pulp-platform/common_cells/src/lfsr_8bit.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/vendor/pulp-platform/common_cells/src/stream_arbiter.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/vendor/pulp-platform/common_cells/src/stream_arbiter_flushable.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/vendor/pulp-platform/common_cells/src/stream_mux.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/vendor/pulp-platform/common_cells/src/stream_demux.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/vendor/pulp-platform/common_cells/src/lzc.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/vendor/pulp-platform/common_cells/src/rr_arb_tree.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/vendor/pulp-platform/common_cells/src/shift_reg.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/vendor/pulp-platform/common_cells/src/unread.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/vendor/pulp-platform/common_cells/src/popcount.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/vendor/pulp-platform/common_cells/src/exp_backoff.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/vendor/pulp-platform/common_cells/src/counter.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/vendor/pulp-platform/common_cells/src/delta_counter.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cva6_accel_first_pass_decoder_stub.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cva6.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cva6_rvfi_probes.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/alu.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/branch_unit.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/compressed_decoder.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/macro_decoder.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/controller.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/csr_buffer.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/csr_regfile.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/decoder.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/ex_stage.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/instr_realign.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/id_stage.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/issue_read_operands.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/issue_stage.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/load_unit.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/load_store_unit.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/lsu_bypass.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/mult.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/multiplier.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/serdiv.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/perf_counters.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/ariane_regfile_ff.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/ariane_regfile_fpga.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/scoreboard.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/store_buffer.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/amo_buffer.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/store_unit.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/commit_stage.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/axi_shim.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cva6_fifo_v3.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/frontend/btb.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/frontend/bht.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/frontend/ras.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/frontend/instr_scan.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/frontend/instr_queue.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/frontend/frontend.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/wt_dcache_ctrl.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/wt_dcache_mem.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/wt_dcache_missunit.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/wt_dcache_wbuffer.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/wt_dcache.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/cva6_icache.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/wt_cache_subsystem.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/wt_axi_adapter.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/tag_cmp.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/axi_adapter.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/miss_handler.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/cache_ctrl.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/cva6_icache_axi_wrapper.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/std_cache_subsystem.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/std_nbdcache.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/hpdcache/rtl/src/hpdcache_pkg.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_demux.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_lfsr.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sync_buffer.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fifo_reg_initialized.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_fxarb.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_rrarb.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_mux.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_1hot_to_binary.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_prio_1hot_encoder.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sram.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sram_wbyteenable.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_sram_wmask.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_regbank_wbyteenable_1rw.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_regbank_wmask_1rw.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_downsize.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/hpdcache/rtl/src/common/hpdcache_data_upsize.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride_pkg.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride_arb.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/hpdcache/rtl/src/hwpf_stride/hwpf_stride_wrapper.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/hpdcache/rtl/src/hpdcache.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/hpdcache/rtl/src/hpdcache_amo.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/hpdcache/rtl/src/hpdcache_cmo.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/hpdcache/rtl/src/hpdcache_core_arbiter.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/hpdcache/rtl/src/hpdcache_ctrl_pe.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/hpdcache/rtl/src/hpdcache_memctrl.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/hpdcache/rtl/src/hpdcache_miss_handler.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/hpdcache/rtl/src/hpdcache_mshr.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/hpdcache/rtl/src/hpdcache_plru.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/hpdcache/rtl/src/hpdcache_rtab.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/hpdcache/rtl/src/hpdcache_uncached.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/hpdcache/rtl/src/hpdcache_victim_sel.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/hpdcache/rtl/src/hpdcache_wbuf.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_read_arbiter.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_req_write_arbiter.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_resp_demux.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_to_axi_read.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/hpdcache/rtl/src/utils/hpdcache_mem_to_axi_write.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/cva6_hpdcache_subsystem.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/cva6_hpdcache_subsystem_axi_arbiter.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/cva6_hpdcache_if_adapter.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/cva6_hpdcache_wrapper.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/hpdcache/rtl/src/common/macros/behav/hpdcache_sram_1rw.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/hpdcache/rtl/src/common/macros/behav/hpdcache_sram_wbyteenable_1rw.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cache_subsystem/hpdcache/rtl/src/common/macros/behav/hpdcache_sram_wmask_1rw.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/pmp/src/pmp.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/pmp/src/pmp_entry.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/common/local/util/tc_sram_wrapper.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/common/local/util/tc_sram_wrapper_cache_techno.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/vendor/pulp-platform/tech_cells_generic/src/rtl/tc_sram.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/common/local/util/sram.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/common/local/util/sram_cache.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cva6_mmu/cva6_mmu.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cva6_mmu/cva6_ptw.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cva6_mmu/cva6_tlb.sv}
add_file -verilog -vlog_std sysv {/home/anonymous/code/cva6/core/cva6_mmu/cva6_shared_tlb.sv}
#-- top module name
set_option -top_module cva6
set_option -include_path {/home/anonymous/code/cva6/core/include}
set_option -include_path {/home/anonymous/code/cva6/vendor/pulp-platform/common_cells/include}
set_option -include_path {/home/anonymous/code/cva6/vendor/pulp-platform/common_cells/src}
set_option -include_path {/home/anonymous/code/cva6/vendor/pulp-platform/axi/include}
set_option -include_path {/home/anonymous/code/cva6/common/local/util}
set_option -include_path {/home/anonymous/code/cva6/core/cache_subsystem/hpdcache/rtl/include}
set_option -include_path {/home/anonymous/code/cva6/corev_apu/fpga/lattice}

#-- set result format/file last
project -result_format "vm"
project -result_file {/home/anonymous/code/cva6/corev_apu/fpga/lattice/impl_1/cva6_1_impl_1.vm}

#-- error message log file
project -log_file {cva6_1_impl_1.srf}
project -run -clean
