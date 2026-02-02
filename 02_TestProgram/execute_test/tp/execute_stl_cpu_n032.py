#----------------------------------------------------------------------------------------------
# function name : execute_stl_cpu_n032
# description   : Run tp name
# input         : tp's name
# output        : None
#----------------------------------------------------------------------------------------------
def execute_stl_cpu_n032(tp_name) :

    setup_debug(tp_name)

    # Start testing for CPU_N032
    log_message("=================================")
    log_message("= Test Case: STL_CPU_N32")

    #self_dbw.RunCmd("route my_program_1 hardbrk execute main#33", True, True)
    #self_dbw.RunCmd("wait", True, True)
    #self_dbw.RunCmd("route my_program_1 hardbrk execute main#34", True, True)
    #self_dbw.RunCmd("wait", True, True)
    # Sets a breakpoint at the specified position to check if the operation result is equal to the expected value
    self_dbw.RunCmd("route my_program_1 hardbrk execute m33_stl_compare_gpr", True, True)
    self_dbw.RunCmd("wait", True, True)
    # Sets a breakpoint at the specified position.
    self_dbw.RunCmd("route my_program_1 hardbrk execute testPassed", True, True)
    self_dbw.RunCmd("wait", True, True)
    # Continues a process that has been interrupted by a breakpoint or interrupt.
    self_dbw.RunCmd("route my_program_1 c", True, True)
    print "Checking execution status."
    #recordregbefore()
    #self_dbw.RunCmd("route my_program_1 c", True, True)

    # Start testing for TEST ELEMENT 191
    log_message("=    TEST ELEMENT 191:")
    if not check_testpoint(M33_STL_TE191_EXP_VAL1, 1): return False
    if not check_testpoint(M33_STL_TE191_EXP_VAL2, 2): return False
    if not check_testpoint(M33_STL_TE191_EXP_VAL3, 3): return False
    if not check_testpoint(M33_STL_TE191_EXP_VAL9, 4): return False
    if not check_testpoint(M33_STL_TE191_EXP_VAL4, 5): return False
    if not check_testpoint(M33_STL_TE191_EXP_VAL9, 6): return False
    if not check_testpoint(M33_STL_TE191_EXP_VAL5, 7): return False
    if not check_testpoint(M33_STL_TE191_EXP_VAL9, 8): return False
    if not check_testpoint(M33_STL_TE191_EXP_VAL1, 9): return False
    if not check_testpoint(M33_STL_TE191_EXP_VAL2, 10): return False
    if not check_testpoint(M33_STL_TE191_EXP_VAL3, 11): return False
    if not check_testpoint(M33_STL_TE191_EXP_VAL9, 12): return False
    if not check_testpoint(M33_STL_TE191_EXP_VAL4, 13): return False
    if not check_testpoint(M33_STL_TE191_EXP_VAL9, 14): return False
    if not check_testpoint(M33_STL_TE191_EXP_VAL5, 15): return False
    if not check_testpoint(M33_STL_TE191_EXP_VAL9, 16): return False
    if not check_testpoint(M33_STL_TE191_EXP_VAL1, 17): return False
    if not check_testpoint(M33_STL_TE191_EXP_VAL2, 18): return False
    if not check_testpoint(M33_STL_TE191_EXP_VAL3, 19): return False
    if not check_testpoint(M33_STL_TE191_EXP_VAL9, 20): return False
    if not check_testpoint(M33_STL_TE191_EXP_VAL7, 21): return False
    if not check_testpoint(M33_STL_TE191_EXP_VAL9, 22): return False
    if not check_testpoint(M33_STL_TE191_EXP_VAL6, 23): return False
    if not check_testpoint(M33_STL_TE191_EXP_VAL9, 24): return False
    if not check_testpoint(M33_STL_TE191_EXP_VAL1, 25): return False
    if not check_testpoint(M33_STL_TE191_EXP_VAL2, 26): return False
    if not check_testpoint(M33_STL_TE191_EXP_VAL3, 27): return False
    if not check_testpoint(M33_STL_TE191_EXP_VAL9, 28): return False
    if not check_testpoint(M33_STL_TE191_EXP_VAL7, 29): return False
    if not check_testpoint(M33_STL_TE191_EXP_VAL9, 30): return False
    if not check_testpoint(M33_STL_TE191_EXP_VAL8, 31): return False
    if not check_testpoint(M33_STL_TE191_EXP_VAL9, 32): return False

    # Start testing for TEST ELEMENT 192
    log_message("=    TEST ELEMENT 192:")
    if not check_testpoint(M33_STL_TE192_EXP_VAL1, 33): return False
    if not check_testpoint(M33_STL_TE192_EXP_VAL2, 34): return False
    if not check_testpoint(M33_STL_TE192_EXP_VAL3, 35): return False
    if not check_testpoint(M33_STL_TE192_EXP_VAL4, 36): return False
    if not check_testpoint(M33_STL_TE192_EXP_VAL5, 37): return False
    if not check_testpoint(M33_STL_TE192_EXP_VAL2, 38): return False
    if not check_testpoint(M33_STL_TE192_EXP_VAL12, 39): return False
    if not check_testpoint(M33_STL_TE192_EXP_VAL4, 40): return False
    if not check_testpoint(M33_STL_TE192_EXP_VAL13, 41): return False
    if not check_testpoint(M33_STL_TE192_EXP_VAL2, 42): return False
    if not check_testpoint(M33_STL_TE192_EXP_VAL5, 43): return False
    if not check_testpoint(M33_STL_TE192_EXP_VAL2, 44): return False
    if not check_testpoint(M33_STL_TE192_EXP_VAL6, 45): return False
    if not check_testpoint(M33_STL_TE192_EXP_VAL2, 46): return False
    if not check_testpoint(M33_STL_TE192_EXP_VAL7, 47): return False
    if not check_testpoint(M33_STL_TE192_EXP_VAL2, 48): return False
    if not check_testpoint(M33_STL_TE192_EXP_VAL8, 49): return False
    if not check_testpoint(M33_STL_TE192_EXP_VAL2, 50): return False
    if not check_testpoint(M33_STL_TE192_EXP_VAL9, 51): return False
    if not check_testpoint(M33_STL_TE192_EXP_VAL2, 52): return False
    if not check_testpoint(M33_STL_TE192_EXP_VAL6, 53): return False
    if not check_testpoint(M33_STL_TE192_EXP_VAL2, 54): return False
    if not check_testpoint(M33_STL_TE192_EXP_VAL7, 55): return False
    if not check_testpoint(M33_STL_TE192_EXP_VAL2, 56): return False
    if not check_testpoint(M33_STL_TE192_EXP_VAL10, 57): return False
    if not check_testpoint(M33_STL_TE192_EXP_VAL2, 58): return False
    if not check_testpoint(M33_STL_TE192_EXP_VAL11, 59): return False
    if not check_testpoint(M33_STL_TE192_EXP_VAL2, 60): return False
    if not check_testpoint(M33_STL_TE192_EXP_VAL14, 61): return False
    if not check_testpoint(M33_STL_TE192_EXP_VAL4, 62): return False
    if not check_testpoint(M33_STL_TE192_EXP_VAL14, 63): return False
    if not check_testpoint(M33_STL_TE192_EXP_VAL4, 64): return False

    # Start testing for TEST ELEMENT 193
    log_message("=    TEST ELEMENT 193:")
    if not check_testpoint(M33_STL_TE193_EXP_VAL1, 65): return False
    if not check_testpoint(M33_STL_TE193_EXP_VAL2, 66): return False
    if not check_testpoint(M33_STL_TE193_EXP_VAL3, 67): return False
    if not check_testpoint(M33_STL_TE193_EXP_VAL2, 68): return False

    # Start testing for TEST ELEMENT 194
    log_message("=    TEST ELEMENT 194:")
    if not check_testpoint(M33_STL_TE194_EXP_VAL1, 69): return False
    if not check_testpoint(M33_STL_TE194_EXP_VAL2, 70): return False
    if not check_testpoint(M33_STL_TE194_EXP_VAL3, 71): return False
    if not check_testpoint(M33_STL_TE194_EXP_VAL4, 72): return False
    if not check_testpoint(M33_STL_TE194_EXP_VAL5, 73): return False
    if not check_testpoint(M33_STL_TE194_EXP_VAL2, 74): return False
    if not check_testpoint(M33_STL_TE194_EXP_VAL6, 75): return False
    if not check_testpoint(M33_STL_TE194_EXP_VAL2, 76): return False
    if not check_testpoint(M33_STL_TE194_EXP_VAL7, 77): return False
    if not check_testpoint(M33_STL_TE194_EXP_VAL2, 78): return False
    if not check_testpoint(M33_STL_TE194_EXP_VAL8, 79): return False
    if not check_testpoint(M33_STL_TE194_EXP_VAL9, 80): return False
    if not check_testpoint(M33_STL_TE194_EXP_VAL10, 81): return False
    if not check_testpoint(M33_STL_TE194_EXP_VAL2, 82): return False
    if not check_testpoint(M33_STL_TE194_EXP_VAL11, 83): return False
    if not check_testpoint(M33_STL_TE194_EXP_VAL9, 84): return False
    if not check_testpoint(M33_STL_TE194_EXP_VAL12, 85): return False
    if not check_testpoint(M33_STL_TE194_EXP_VAL2, 86): return False
    if not check_testpoint(M33_STL_TE194_EXP_VAL13, 87): return False
    if not check_testpoint(M33_STL_TE194_EXP_VAL9, 88): return False
    if not check_testpoint(M33_STL_TE194_EXP_VAL14, 89): return False
    if not check_testpoint(M33_STL_TE194_EXP_VAL2, 90): return False
    if not check_testpoint(M33_STL_TE194_EXP_VAL15, 91): return False
    if not check_testpoint(M33_STL_TE194_EXP_VAL2, 92): return False

    # Start testing for TEST ELEMENT 195
    log_message("=    TEST ELEMENT 195:")
    if not check_testpoint(M33_STL_TE195_EXP_VAL1, 93): return False
    if not check_testpoint(M33_STL_TE195_EXP_VAL2, 94): return False
    if not check_testpoint(M33_STL_TE195_EXP_VAL3, 95): return False
    if not check_testpoint(M33_STL_TE195_EXP_VAL4, 96): return False
    if not check_testpoint(M33_STL_TE195_EXP_VAL5, 97): return False
    if not check_testpoint(M33_STL_TE195_EXP_VAL2, 98): return False
    if not check_testpoint(M33_STL_TE195_EXP_VAL6, 99): return False
    if not check_testpoint(M33_STL_TE195_EXP_VAL2, 100): return False
    if not check_testpoint(M33_STL_TE195_EXP_VAL10, 101): return False
    if not check_testpoint(M33_STL_TE195_EXP_VAL4, 102): return False
    if not check_testpoint(M33_STL_TE195_EXP_VAL2, 103): return False
    if not check_testpoint(M33_STL_TE195_EXP_VAL11, 104): return False
    if not check_testpoint(M33_STL_TE195_EXP_VAL7, 105): return False
    if not check_testpoint(M33_STL_TE195_EXP_VAL12, 106): return False
    if not check_testpoint(M33_STL_TE195_EXP_VAL8, 107): return False
    if not check_testpoint(M33_STL_TE195_EXP_VAL13, 108): return False
    if not check_testpoint(M33_STL_TE195_EXP_VAL9, 109): return False
    if not check_testpoint(M33_STL_TE195_EXP_VAL14, 110): return False

    # Start testing for TEST ELEMENT 196
    log_message("=    TEST ELEMENT 196:")
    if not check_testpoint(M33_STL_TE196_EXP_VAL1, 111): return False
    if not check_testpoint(M33_STL_TE196_EXP_VAL2, 112): return False
    if not check_testpoint(M33_STL_TE196_EXP_VAL3, 113): return False
    if not check_testpoint(M33_STL_TE196_EXP_VAL4, 114): return False
    if not check_testpoint(M33_STL_TE196_EXP_VAL5, 115): return False
    if not check_testpoint(M33_STL_TE196_EXP_VAL6, 116): return False
    if not check_testpoint(M33_STL_TE196_EXP_VAL7, 117): return False
    if not check_testpoint(M33_STL_TE196_EXP_VAL8, 118): return False
    if not check_testpoint(M33_STL_TE196_EXP_VAL9, 119): return False
    if not check_testpoint(M33_STL_TE196_EXP_VAL10, 120): return False
    if not check_testpoint(M33_STL_TE196_EXP_VAL11, 121): return False
    if not check_testpoint(M33_STL_TE196_EXP_VAL12, 122): return False

    # Start testing for TEST ELEMENT 197
    log_message("=    TEST ELEMENT 197:")
    if not check_testpoint(M33_STL_TE197_EXP_VAL1, 123): return False
    if not check_testpoint(M33_STL_TE197_EXP_VAL2, 124): return False
    if not check_testpoint(M33_STL_TE197_EXP_VAL3, 125): return False
    if not check_testpoint(M33_STL_TE197_EXP_VAL4, 126): return False
    if not check_testpoint(M33_STL_TE197_EXP_VAL5, 127): return False
    if not check_testpoint(M33_STL_TE197_EXP_VAL6, 128): return False
    if not check_testpoint(M33_STL_TE197_EXP_VAL7, 129): return False
    if not check_testpoint(M33_STL_TE197_EXP_VAL8, 130): return False

    # Start testing for TEST ELEMENT 198
    log_message("=    TEST ELEMENT 198:")
    if not check_testpoint(M33_STL_TE198_EXP_VAL1, 131): return False
    if not check_testpoint(M33_STL_TE198_EXP_VAL2, 132): return False
    if not check_testpoint(M33_STL_TE198_EXP_VAL3, 133): return False
    if not check_testpoint(M33_STL_TE198_EXP_VAL5, 134): return False
    if not check_testpoint(M33_STL_TE198_EXP_VAL6, 135): return False
    if not check_testpoint(M33_STL_TE198_EXP_VAL13, 136): return False
    if not check_testpoint(M33_STL_TE198_EXP_VAL7, 137): return False
    if not check_testpoint(M33_STL_TE198_EXP_VAL8, 138): return False
    if not check_testpoint(M33_STL_TE198_EXP_VAL9, 139): return False
    if not check_testpoint(M33_STL_TE198_EXP_VAL10, 140): return False
    if not check_testpoint(M33_STL_TE198_EXP_VAL11, 141): return False
    if not check_testpoint(M33_STL_TE198_EXP_VAL12, 142): return False
    
    # Start testing for TEST ELEMENT 199
    log_message("=    TEST ELEMENT 199:")
    if not check_testpoint(M33_STL_TE199_EXP_VAL1, 143): return False
    if not check_testpoint(M33_STL_TE199_EXP_VAL2, 144): return False
    if not check_testpoint(M33_STL_TE199_EXP_VAL3, 145): return False
    if not check_testpoint(M33_STL_TE199_EXP_VAL4, 146): return False

    #if not checkregafter():
    #    log_message("= Save/Restore is not OK") 
    #    log_message("= Test Case Result: FAILED")
    #    return False
    #else:
    #    log_message("= Save/Restore is OK")
    
    #self_dbw.RunCmd("route my_program_1 c", True, True)

    check_status()
    
    # Stops the current process.
    end_debug_tp()

    return None
#----------------------------------------------------------------------------------------------
#                        E            O            F
#----------------------------------------------------------------------------------------------
