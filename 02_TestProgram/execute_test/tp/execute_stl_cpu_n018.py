#----------------------------------------------------------------------------------------------
# function name : execute_stl_cpu_n018
# description   : Run tp name
# input         : tp's name
# output        : None
#----------------------------------------------------------------------------------------------
def execute_stl_cpu_n018(tp_name) :

    setup_debug(tp_name)

    # Start testing for CPU_N018
    log_message("=================================")
    log_message("= Test Case: STL_CPU_N018")

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

    # Start testing for TEST ELEMENT 278
    log_message("=    TEST ELEMENT 278:")
    if not check_testpoint(M33_STL_TE278_EXP_VAL4, 1): return False
    if not check_testpoint(M33_STL_TE278_EXP_VAL2, 2): return False
    if not check_testpoint(M33_STL_TE278_EXP_VAL3, 3): return False
    if not check_testpoint(M33_STL_TE278_EXP_VAL1, 4): return False
    if not check_testpoint(M33_STL_TE278_EXP_VAL4, 5): return False
    if not check_testpoint(M33_STL_TE278_EXP_VAL1, 6): return False
    if not check_testpoint(M33_STL_TE278_EXP_VAL4, 7): return False
    if not check_testpoint(M33_STL_TE278_EXP_VAL1, 8): return False
    if not check_testpoint(M33_STL_TE278_EXP_VAL1, 9): return False
    if not check_testpoint(M33_STL_TE278_EXP_VAL5, 10): return False

    # Start testing for TEST ELEMENT 293
    log_message("=    TEST ELEMENT 293:")
    if not check_testpoint(M33_STL_TE293_EXP_VAL3, 11): return False
    if not check_testpoint(M33_STL_TE293_EXP_VAL1, 12): return False
    if not check_testpoint(M33_STL_TE293_EXP_VAL4, 13): return False
    if not check_testpoint(M33_STL_TE293_EXP_VAL2, 14): return False
    if not check_testpoint(M33_STL_TE293_EXP_VAL4, 15): return False
    if not check_testpoint(M33_STL_TE293_EXP_VAL1, 16): return False
    if not check_testpoint(M33_STL_TE293_EXP_VAL4, 17): return False
    if not check_testpoint(M33_STL_TE293_EXP_VAL1, 18): return False
    if not check_testpoint(M33_STL_TE293_EXP_VAL1, 19): return False
    if not check_testpoint(M33_STL_TE293_EXP_VAL5, 20): return False

    # Start testing for TEST ELEMENT 300
    log_message("=    TEST ELEMENT 300:")
    if not check_testpoint(M33_STL_TE300_EXP_VAL3, 21): return False
    if not check_testpoint(M33_STL_TE300_EXP_VAL1, 22): return False
    if not check_testpoint(M33_STL_TE300_EXP_VAL3, 23): return False
    if not check_testpoint(M33_STL_TE300_EXP_VAL2, 24): return False
    if not check_testpoint(M33_STL_TE300_EXP_VAL4, 25): return False
    if not check_testpoint(M33_STL_TE300_EXP_VAL1, 26): return False
    if not check_testpoint(M33_STL_TE300_EXP_VAL4, 27): return False
    if not check_testpoint(M33_STL_TE300_EXP_VAL1, 28): return False
    if not check_testpoint(M33_STL_TE300_EXP_VAL3, 29): return False
    if not check_testpoint(M33_STL_TE300_EXP_VAL5, 30): return False

    # Start testing for TEST ELEMENT 303
    log_message("=    TEST ELEMENT 303:")
    if not check_testpoint(M33_STL_TE303_EXP_VAL4, 31): return False
    if not check_testpoint(M33_STL_TE303_EXP_VAL2, 32): return False
    if not check_testpoint(M33_STL_TE303_EXP_VAL3, 33): return False
    if not check_testpoint(M33_STL_TE303_EXP_VAL1, 34): return False
    if not check_testpoint(M33_STL_TE303_EXP_VAL4, 35): return False
    if not check_testpoint(M33_STL_TE303_EXP_VAL1, 36): return False
    if not check_testpoint(M33_STL_TE303_EXP_VAL4, 37): return False
    if not check_testpoint(M33_STL_TE303_EXP_VAL1, 38): return False
    if not check_testpoint(M33_STL_TE303_EXP_VAL3, 39): return False
    if not check_testpoint(M33_STL_TE303_EXP_VAL5, 40): return False

    # Start testing for TEST ELEMENT 306
    log_message("=    TEST ELEMENT 306:")
    if not check_testpoint(M33_STL_TE306_EXP_VAL4, 41): return False
    if not check_testpoint(M33_STL_TE306_EXP_VAL2, 42): return False
    if not check_testpoint(M33_STL_TE306_EXP_VAL4, 43): return False
    if not check_testpoint(M33_STL_TE306_EXP_VAL1, 44): return False
    if not check_testpoint(M33_STL_TE306_EXP_VAL4, 45): return False
    if not check_testpoint(M33_STL_TE306_EXP_VAL1, 46): return False
    if not check_testpoint(M33_STL_TE306_EXP_VAL4, 47): return False
    if not check_testpoint(M33_STL_TE306_EXP_VAL1, 48): return False
    if not check_testpoint(M33_STL_TE306_EXP_VAL3, 49): return False
    if not check_testpoint(M33_STL_TE306_EXP_VAL5, 50): return False

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
