
 add_fsm_encoding \
       {Ps2Interface.state} \
       { }  \
       {{0000 000000000000001} {0001 000000000000100} {0010 000000000001000} {0011 000000000010000} {0100 000000000000010} {0101 000000000100000} {0110 000000001000000} {0111 000000010000000} {1000 000000100000000} {1001 000001000000000} {1010 000100000000000} {1011 000010000000000} {1100 001000000000000} {1101 010000000000000} {1110 100000000000000} }

 add_fsm_encoding \
       {KeyboardCtrl.state} \
       { }  \
       {{000 000} {001 001} {010 010} {011 100} {100 110} {101 101} {110 011} }
