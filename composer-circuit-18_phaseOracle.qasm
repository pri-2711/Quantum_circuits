OPENQASM 2.0;
include "qelib1.inc";
// checks if qubits belong to same phase family of not 
// i.e. same amplitudes but different phases

qreg q[2];
creg c[2];

h q[0];
h q[1];
x q[1];
cz q[1], q[0];
x q[1];

// probability remains same (before measurement) even when phase is changed
