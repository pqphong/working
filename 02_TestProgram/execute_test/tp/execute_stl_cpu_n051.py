#----------------------------------------------------------------------------------------------
# function name : execute_stl_cpu_n051
# description   : Run tp name
# input         : tp's name
# output        : None
#----------------------------------------------------------------------------------------------
def execute_stl_cpu_n051(tp_name) :

    setup_debug(tp_name)

    # Start testing for CPU_N051
    log_message("=================================")
    log_message("= Test Case: STL_CPU_N51")

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

    # Start testing for TEST ELEMENT 275
    log_message("=    TEST ELEMENT 275")
    if not check_testpoint(M33_STL_TE275_EXP_VAL2, 1): return False
    if not check_testpoint(M33_STL_TE275_EXP_VAL1, 2): return False
    if not check_testpoint(M33_STL_TE275_EXP_VAL2, 3): return False
    if not check_testpoint(M33_STL_TE275_EXP_VAL3, 4): return False
    if not check_testpoint(M33_STL_TE275_EXP_VAL6, 5): return False
    if not check_testpoint(M33_STL_TE275_EXP_VAL4, 6): return False
    if not check_testpoint(M33_STL_TE275_EXP_VAL6, 7): return False
    if not check_testpoint(M33_STL_TE275_EXP_VAL5, 8): return False
    if not check_testpoint(M33_STL_TE275_EXP_VAL6, 9): return False
    if not check_testpoint(M33_STL_TE275_EXP_VAL6, 10): return False

    # Start testing for TEST ELEMENT 295
    log_message("=    TEST ELEMENT 295")
    if not check_testpoint(M33_STL_TE295_EXP_VAL1, 11): return False
    if not check_testpoint(M33_STL_TE295_EXP_VAL2, 12): return False
    if not check_testpoint(M33_STL_TE295_EXP_VAL1, 13): return False
    if not check_testpoint(M33_STL_TE295_EXP_VAL3, 14): return False
    if not check_testpoint(M33_STL_TE295_EXP_VAL4, 15): return False
    if not check_testpoint(M33_STL_TE295_EXP_VAL5, 16): return False
    if not check_testpoint(M33_STL_TE295_EXP_VAL1, 17): return False
    if not check_testpoint(M33_STL_TE295_EXP_VAL6, 18): return False
    if not check_testpoint(M33_STL_TE295_EXP_VAL1, 19): return False
    if not check_testpoint(M33_STL_TE295_EXP_VAL1, 20): return False
    if not check_testpoint(M33_STL_TE295_EXP_VAL1, 21): return False
    if not check_testpoint(M33_STL_TE295_EXP_VAL7, 22): return False

    # Start testing for TEST ELEMENT 322
    log_message("=    TEST ELEMENT 322")
    if not check_testpoint(M33_STL_TE322_EXP_VAL1, 23): return False
    if not check_testpoint(M33_STL_TE322_EXP_VAL2, 24): return False
    if not check_testpoint(M33_STL_TE322_EXP_VAL1, 25): return False
    if not check_testpoint(M33_STL_TE322_EXP_VAL3, 26): return False
    if not check_testpoint(M33_STL_TE322_EXP_VAL4, 27): return False
    if not check_testpoint(M33_STL_TE322_EXP_VAL5, 28): return False
    if not check_testpoint(M33_STL_TE322_EXP_VAL1, 29): return False
    if not check_testpoint(M33_STL_TE322_EXP_VAL6, 30): return False
    if not check_testpoint(M33_STL_TE322_EXP_VAL1, 31): return False
    if not check_testpoint(M33_STL_TE322_EXP_VAL1, 32): return False
    if not check_testpoint(M33_STL_TE322_EXP_VAL1, 33): return False
    if not check_testpoint(M33_STL_TE322_EXP_VAL7, 34): return False

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
