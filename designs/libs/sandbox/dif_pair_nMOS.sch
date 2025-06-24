v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {I0n = 0.26u for IC = 1
so W/L = 10 should give gm/I of ~10 for IBIAS = 25uA} 340 -110 0 0 0.4 0.4 {}
N 560 -310 560 -280 {lab=cmsrc}
N 560 -280 760 -280 {lab=cmsrc}
N 760 -310 760 -280 {lab=cmsrc}
N 630 -280 630 -240 {lab=cmsrc}
N 560 -340 760 -340 {lab=VSS}
N 720 -340 760 -340 {lab=VSS}
N 720 -340 720 -150 {lab=VSS}
N 630 -150 720 -150 {lab=VSS}
N 630 -180 630 -150 {lab=VSS}
N 630 -210 650 -210 {lab=VSS}
N 650 -210 650 -150 {lab=VSS}
N 400 -180 400 -150 {lab=VSS}
N 400 -150 630 -150 {lab=VSS}
N 440 -210 590 -210 {lab=I_n_25u}
N 400 -270 400 -240 {lab=I_n_25u}
N 400 -270 460 -270 {lab=I_n_25u}
N 460 -270 460 -210 {lab=I_n_25u}
N 360 -210 400 -210 {lab=VSS}
N 360 -210 360 -150 {lab=VSS}
N 360 -150 420 -150 {lab=VSS}
N 560 -440 560 -370 {lab=outn}
N 760 -440 760 -370 {lab=outp}
N 490 -340 520 -340 {lab=inp}
N 400 -330 400 -270 {lab=I_n_25u}
N 800 -340 830 -340 {lab=inn}
N 320 -150 360 -150 {lab=VSS}
C {title.sym} 330 50 0 0 {name=l1 author="Peter Kinget"}
C {symbols/nfet_03v3.sym} 540 -340 0 0 {name=M1
L=0.28u
W=3u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 780 -340 0 1 {name=M2
L=0.28u
W=3u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 610 -210 0 0 {name=M3
L=0.28u
W=3u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 420 -210 0 1 {name=M4
L=0.28u
W=3u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {iopin.sym} 560 -440 3 0 {name=p1 lab=outn}
C {iopin.sym} 760 -440 3 0 {name=p2 lab=outp}
C {iopin.sym} 400 -330 3 0 {name=p3 lab=I_n_25u}
C {ipin.sym} 490 -340 0 0 {name=p4 lab=inp}
C {ipin.sym} 830 -340 0 1 {name=p5 lab=inn
}
C {iopin.sym} 320 -150 2 0 {name=p6 lab=VSS}
C {lab_wire.sym} 690 -280 0 0 {name=p7 sig_type=std_logic lab=cmsrc}
