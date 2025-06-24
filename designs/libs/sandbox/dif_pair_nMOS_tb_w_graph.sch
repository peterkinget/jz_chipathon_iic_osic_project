v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Testbench for Characterizing an nMOS Differential Pair} -710 -480 0 0 0.8 0.8 {}
N -350 20 -350 40 {lab=biasn}
N -350 40 -80 40 {lab=biasn}
N -440 -150 -440 -40 {lab=VDD}
N -440 -150 260 -150 {lab=VDD}
N 260 -150 260 -110 {lab=VDD}
N 260 -150 310 -150 {lab=VDD}
N 310 -150 310 -60 {lab=VDD}
N 220 -20 260 -20 {lab=outp}
N 260 -50 260 -20 {lab=outp}
N 220 0 310 0 {lab=outn}
N -440 20 -440 70 {lab=GND}
N -440 70 -80 70 {lab=GND}
N -350 -150 -350 -40 {lab=VDD}
N -680 -20 -680 70 {lab=GND}
N -720 70 -680 70 {lab=GND}
N -680 70 -640 70 {lab=GND}
N -640 -10 -640 10 {lab=incm}
N -520 -10 -520 10 {lab=incm}
N -640 10 -520 10 {lab=incm}
N -720 -60 -680 -60 {lab=ind}
N -720 -60 -720 10 {lab=ind}
N -720 -100 -720 -60 {lab=ind}
N -720 -100 -560 -100 {lab=ind}
N -560 -100 -560 -60 {lab=ind}
N -560 -20 -560 70 {lab=GND}
N -640 70 -560 70 {lab=GND}
N -640 -70 -600 -70 {lab=inp}
N -520 -70 -480 -70 {lab=inn}
N -120 0 -80 0 {lab=inn}
N -560 70 -430 70 {lab=GND}
C {libs/sandbox/dif_pair_nMOS.sym} 70 10 0 0 {name=xdif_pair}
C {isource.sym} -350 -10 0 0 {name=Ibias value=25u}
C {vsource.sym} 260 -80 0 0 {name=Voutp value=1.65 savecurrent=false}
C {vsource.sym} 310 -30 0 0 {name=Voutn value=1.65 savecurrent=false}
C {vsource.sym} -440 -10 0 0 {name=Vdd value=3.3 savecurrent=false}
C {vsource.sym} -640 40 0 0 {name=Vincm value=1.65 savecurrent=false}
C {vsource.sym} -720 40 0 0 {name=Vind value=0 savecurrent=false}
C {vcvs.sym} -640 -40 0 0 {name=E1 value=0.5}
C {vcvs.sym} -520 -40 0 0 {name=E2 value=-0.5}
C {lab_wire.sym} -120 -20 0 0 {name=p1 sig_type=std_logic lab=inp}
C {lab_wire.sym} -120 0 0 0 {name=p2 sig_type=std_logic lab=inn}
C {lab_wire.sym} -600 -70 0 0 {name=p3 sig_type=std_logic lab=inp}
C {lab_wire.sym} -480 -70 0 0 {name=p4 sig_type=std_logic lab=inn}
C {devices/code_shown.sym} -290 -340 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} -730 -360 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all
dc vind -3.3 3.3 0.001 Ibias 25u 100u 25u
write test_difpair_dc.raw
plot voutp#branch voutn#branch
plot voutp#branch-voutn#branch
op
write test_difpair_op.raw
.endc
"}
C {gnd.sym} -390 70 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 250 -20 0 0 {name=p5 sig_type=std_logic lab=outp}
C {lab_wire.sym} 260 0 0 0 {name=p6 sig_type=std_logic lab=outn
}
C {lab_wire.sym} -120 -150 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -180 40 0 0 {name=p9 sig_type=std_logic lab=biasn}
C {lab_wire.sym} -670 -100 0 0 {name=p8 sig_type=std_logic lab=ind}
C {lab_wire.sym} -570 10 0 0 {name=p10 sig_type=std_logic lab=incm}
C {title.sym} -650 200 0 0 {name=l2 author="Peter Kinget"}
