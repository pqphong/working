#----------------------------------------------------------------------------------------------
# function name : execute_stl_cpu_n030
# description   : Run tp name
# input         : tp's name
# output        : None
#----------------------------------------------------------------------------------------------
def execute_stl_cpu_n030(tp_name) :

    setup_debug(tp_name)

    # Start testing for CPU_N030
    log_message("=================================")
    log_message("= Test Case: STL_CPU_N30")

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

    # Start testing for TEST ELEMENT 172
    log_message("=    TEST ELEMENT 172:")
    if not check_testpoint(M33_STL_TE172_EXP_VAL1, 1): return False
    if not check_testpoint(M33_STL_TE172_EXP_VAL2, 2): return False

    # Start testing for TEST ELEMENT 173
    log_message("=    TEST ELEMENT 173:")
    if not check_testpoint(M33_STL_TE173_EXP_VAL1, 3): return False
    if not check_testpoint(M33_STL_TE173_EXP_VAL2, 4): return False

    # Start testing for TEST ELEMENT 174
    log_message("=    TEST ELEMENT 174:")
    if not check_testpoint(M33_STL_TE174_EXP_VAL1, 5): return False
    if not check_testpoint(M33_STL_TE174_EXP_VAL2, 6): return False

    # Start testing for TEST ELEMENT 175
    log_message("=    TEST ELEMENT 175:")
    if not check_testpoint(M33_STL_TE175_EXP_VAL1, 7): return False
    if not check_testpoint(M33_STL_TE175_EXP_VAL2, 8): return False

    # Start testing for TEST ELEMENT 176
    log_message("=    TEST ELEMENT 176:")
    if not check_testpoint(M33_STL_TE176_EXP_VAL1, 9): return False
    if not check_testpoint(M33_STL_TE176_EXP_VAL2, 10): return False
    if not check_testpoint(M33_STL_TE176_EXP_VAL3, 11): return False
    if not check_testpoint(M33_STL_TE176_EXP_VAL4, 12): return False

    # Start testing for TEST ELEMENT 177
    log_message("=    TEST ELEMENT 177:")
    if not check_testpoint(M33_STL_TE177_EXP_VAL1, 13): return False
    if not check_testpoint(M33_STL_TE177_EXP_VAL2, 14): return False
    if not check_testpoint(M33_STL_TE177_EXP_VAL3, 15): return False
    if not check_testpoint(M33_STL_TE177_EXP_VAL5, 16): return False
    if not check_testpoint(M33_STL_TE177_EXP_VAL6, 17): return False

    # Start testing for TEST ELEMENT 178
    log_message("=    TEST ELEMENT 178:")
    if not check_testpoint(M33_STL_TE178_EXP_VAL1, 18): return False
    if not check_testpoint(M33_STL_TE178_EXP_VAL2, 19): return False
    if not check_testpoint(M33_STL_TE178_EXP_VAL3, 20): return False
    if not check_testpoint(M33_STL_TE178_EXP_VAL4, 21): return False
    if not check_testpoint(M33_STL_TE178_EXP_VAL5, 22): return False
    if not check_testpoint(M33_STL_TE178_EXP_VAL4, 23): return False
    if not check_testpoint(M33_STL_TE178_EXP_VAL4, 24): return False
    if not check_testpoint(M33_STL_TE178_EXP_VAL6, 25): return False

    # Start testing for TEST ELEMENT 179
    log_message("=    TEST ELEMENT 179:")
    if not check_testpoint(M33_STL_TE179_EXP_VAL1, 26): return False
    if not check_testpoint(M33_STL_TE179_EXP_VAL2, 27): return False
    if not check_testpoint(M33_STL_TE179_EXP_VAL3, 28): return False
    if not check_testpoint(M33_STL_TE179_EXP_VAL4, 29): return False
    if not check_testpoint(M33_STL_TE179_EXP_VAL5, 30): return False
    if not check_testpoint(M33_STL_TE179_EXP_VAL6, 31): return False
    if not check_testpoint(M33_STL_TE179_EXP_VAL7, 32): return False
    if not check_testpoint(M33_STL_TE179_EXP_VAL4, 33): return False
    if not check_testpoint(M33_STL_TE179_EXP_VAL8, 34): return False
    if not check_testpoint(M33_STL_TE179_EXP_VAL5, 35): return False

    # Start testing for TEST ELEMENT 180
    log_message("=    TEST ELEMENT 180:")
    if not check_testpoint(M33_STL_TE180_EXP_VAL1, 36): return False
    if not check_testpoint(M33_STL_TE180_EXP_VAL2, 37): return False

    # Start testing for TEST ELEMENT 181
    log_message("=    TEST ELEMENT 181:")
    if not check_testpoint(M33_STL_TE181_EXP_VAL1, 38): return False
    if not check_testpoint(M33_STL_TE181_EXP_VAL6, 39): return False
    if not check_testpoint(M33_STL_TE181_EXP_VAL2, 40): return False
    if not check_testpoint(M33_STL_TE181_EXP_VAL3, 41): return False
    if not check_testpoint(M33_STL_TE181_EXP_VAL4, 42): return False
    if not check_testpoint(M33_STL_TE181_EXP_VAL5, 43): return False
    if not check_testpoint(M33_STL_TE181_EXP_VAL5, 44): return False
    if not check_testpoint(M33_STL_TE181_EXP_VAL5, 45): return False

    # Start testing for TEST ELEMENT 182
    log_message("=    TEST ELEMENT 182:")
    if not check_testpoint(M33_STL_TE182_EXP_VAL1, 46): return False
    if not check_testpoint(M33_STL_TE182_EXP_VAL2, 47): return False
    if not check_testpoint(M33_STL_TE182_EXP_VAL3, 48): return False
    if not check_testpoint(M33_STL_TE182_EXP_VAL4, 49): return False
    if not check_testpoint(M33_STL_TE182_EXP_VAL10, 50): return False
    if not check_testpoint(M33_STL_TE182_EXP_VAL6, 51): return False
    if not check_testpoint(M33_STL_TE182_EXP_VAL2, 52): return False
    if not check_testpoint(M33_STL_TE182_EXP_VAL2, 53): return False
    if not check_testpoint(M33_STL_TE182_EXP_VAL7, 54): return False
    if not check_testpoint(M33_STL_TE182_EXP_VAL8, 55): return False
    if not check_testpoint(M33_STL_TE182_EXP_VAL11, 56): return False
    if not check_testpoint(M33_STL_TE182_EXP_VAL4, 57): return False
    if not check_testpoint(M33_STL_TE182_EXP_VAL10, 58): return False
    if not check_testpoint(M33_STL_TE182_EXP_VAL9, 59): return False
    if not check_testpoint(M33_STL_TE182_EXP_VAL2, 60): return False
    if not check_testpoint(M33_STL_TE182_EXP_VAL2, 61): return False
    if not check_testpoint(M33_STL_TE182_EXP_VAL7, 62): return False
    if not check_testpoint(M33_STL_TE182_EXP_VAL5, 63): return False
    if not check_testpoint(M33_STL_TE182_EXP_VAL11, 64): return False

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
