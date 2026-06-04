v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 80 -90 80 -50 {
lab=#net1}
N 80 10 80 30 {
lab=GND}
N 200 10 200 30 {
lab=GND}
N 320 10 320 40 {
lab=GND}
N 440 10 440 40 {
lab=GND}
N 410 -260 520 -260 {
lab=VOUT}
N 290 -260 350 -260 {
lab=B2}
N 320 -260 320 -150 {
lab=B2}
N 200 -90 200 -50 {
lab=#net2}
N 200 -260 200 -150 {
lab=B1}
N 160 -260 230 -260 {
lab=B1}
N 80 -260 80 -150 {
lab=LSB}
N -10 -260 100 -260 {
lab=LSB}
N -110 -260 -70 -260 {
lab=GND}
N -110 -260 -110 -230 {
lab=GND}
N 440 -90 440 -50 {
lab=#net3}
N 320 -90 320 -50 {
lab=#net4}
N 440 -260 440 -150 {
lab=VOUT}
C {code_shown.sym} 540 -190 0 0 {name=s1 only_toplevel=false 
value="
.tran 10p 16n
.save all
"}
C {res.sym} 80 -120 0 0 {name=R1
value=20k
footprint=1206
device=resistor
m=1}
C {res.sym} 380 -260 3 0 {name=R5
value=10k
footprint=1206
device=resistor
m=1}
C {res.sym} 260 -260 3 0 {name=R6
value=10k
footprint=1206
device=resistor
m=1}
C {res.sym} 130 -260 3 0 {name=R7
value=10k
footprint=1206
device=resistor
m=1}
C {res.sym} -40 -260 3 0 {name=R8
value=20k
footprint=1206
device=resistor
m=1}
C {res.sym} 200 -120 0 0 {name=R9
value=20k
footprint=1206
device=resistor
m=1}
C {res.sym} 320 -120 0 0 {name=R2
value=20k
footprint=1206
device=resistor
m=1}
C {res.sym} 440 -120 0 0 {name=R3
value=20k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 200 -20 0 0 {name=V2 
value="PULSE(0 3.3 0 100p 100p 2n 4n)"
savecurrent=false}
C {vsource.sym} 320 -20 0 0 {name=V3 
value="PULSE(0 3.3 0 100p 100p 4n 8n)"
 savecurrent=false}
C {gnd.sym} -110 -230 0 0 {name=l1 lab=GND}
C {gnd.sym} 80 30 0 0 {name=l3 lab=GND}
C {gnd.sym} 200 30 0 0 {name=l4 lab=GND}
C {gnd.sym} 320 40 0 0 {name=l5 lab=GND}
C {gnd.sym} 440 40 0 0 {name=l6 lab=GND}
C {lab_pin.sym} 490 -260 1 0 {name=p1 sig_type=std_logic lab=VOUT}
C {lab_pin.sym} 330 -260 1 0 {name=p2 sig_type=std_logic lab=B2}
C {lab_pin.sym} 210 -260 1 0 {name=p3 sig_type=std_logic lab=B1}
C {lab_pin.sym} 80 -260 1 0 {name=p4 sig_type=std_logic lab=LSB
}
C {lab_pin.sym} 440 -260 1 0 {name=p5 sig_type=std_logic lab=MSB
}
C {vsource.sym} 80 -20 0 0 {name=V1 
value="PULSE(0 3.3 0 100p 100p 1n 2n)"
 savecurrent=false}
C {vsource.sym} 440 -20 0 0 {name=V4 
value="PULSE(0 3.3 0 100p 100p 8n 16n)"
 savecurrent=false}
