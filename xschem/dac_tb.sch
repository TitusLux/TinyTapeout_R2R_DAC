v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 430 -210 580 -210 {
lab=#net1}
N 530 -230 580 -230 {
lab=GND}
N 370 -190 580 -190 {
lab=#net2}
N 310 -170 580 -170 {
lab=#net3}
N 250 -150 580 -150 {
lab=#net4}
N 190 -130 580 -130 {
lab=#net5}
N 880 -230 950 -230 {
lab=VOUT}
C {code_shown.sym} 520 -530 0 0 {name=s2 only_toplevel=false value="
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.tran 100p 170n 5n
.save all

.control
run
plot v(VOUT)
.endc
"}
C {/home/titus/TinyTapeout_R2R_DAC/xschem/r2r_dac.sym} 730 -180 0 0 {name=x1}
C {gnd.sym} 530 -230 2 0 {name=l18 lab=GND}
C {vsource.sym} 190 -160 2 0 {name=V17 value="PULSE(3.3 0 1n 100p 100p 10n 20n)" savecurrent=false}
C {vsource.sym} 250 -180 2 0 {name=V18 value="PULSE(3.3 0 1n 100p 100p 20n 40n)" savecurrent=false}
C {vsource.sym} 310 -200 2 0 {name=V20 value="PULSE(3.3 0 1n 100p 100p 40n 80n)" savecurrent=false}
C {vsource.sym} 370 -220 2 0 {name=V21 value="PULSE(3.3 0 1n 100p 100p 80n 160n)" savecurrent=false}
C {gnd.sym} 430 -270 2 0 {name=l22 lab=GND}
C {gnd.sym} 190 -190 2 0 {name=l26 lab=GND}
C {gnd.sym} 250 -210 2 0 {name=l30 lab=GND}
C {gnd.sym} 310 -230 2 0 {name=l34 lab=GND}
C {gnd.sym} 370 -250 2 0 {name=l38 lab=GND}
C {lab_pin.sym} 950 -230 2 0 {name=VOUT sig_type=std_logic lab=VOUT}
C {vsource.sym} 430 -240 2 0 {name=V16 value=3.3 savecurrent=false}
