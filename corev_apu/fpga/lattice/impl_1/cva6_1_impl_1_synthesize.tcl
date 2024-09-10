if {[catch {

# define run engine funtion
source [file join {/home/anonymous/lscc/radiant/2024.1} scripts tcl flow run_engine.tcl]
# define global variables
global para
set para(gui_mode) "1"
set para(prj_dir) "/home/anonymous/code/cva6/corev_apu/fpga/lattice"
# synthesize IPs
# synthesize VMs
# synthesize top design
file delete -force -- cva6_1_impl_1.vm cva6_1_impl_1.ldc
if {[ catch {::radiant::runengine::run_engine synpwrap -prj "cva6_1_impl_1_synplify.tcl" -log "cva6_1_impl_1.srf"} result options ]} {
    file delete -force -- cva6_1_impl_1.vm cva6_1_impl_1.ldc
    return -options $options $result
}
::radiant::runengine::run_postsyn [list -a LAV-AT -p LAV-AT-E70ES1 -t LFG676 -sp 1 -oc Commercial -top -w -o cva6_1_impl_1_syn.udb cva6_1_impl_1.vm] [list /home/anonymous/code/cva6/corev_apu/fpga/lattice/impl_1/cva6_1_impl_1.ldc]

} out]} {
   ::radiant::runengine::runtime_log $out
   exit 1
}
