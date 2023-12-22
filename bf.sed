s/,/\tcall getchar@PLT\n\tmov [rsp], rax\n/g
s/>/\tinc rsp\n/g
s/</\tdec rsp\n/g
s/+/\tinc qword ptr [rsp]\n/g
s/-/\tdec qword ptr [rsp]\n/g
s/\./\tmov rdi, qword ptr [rsp]\n\tcall putchar@PLT\n/g
1s/^/\t\.intel_syntax noprefix\n\t\.text\n\t\.global main\nmain:\n\tpush rbp\n\tmov rbp, rsp\n\tsub rsp, 0x1000\n\nmov rdi, rsp\n\tmov rcx, 0x1000\n\tmov al, 0\n\tcld\n\trep stosb\n\tmov rdi, 0\n/
$a\\tmov rax, 0\n\tleave\n\tret
