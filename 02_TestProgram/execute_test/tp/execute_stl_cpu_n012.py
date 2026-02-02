#----------------------------------------------------------------------------------------------
# function name : execute_stl_cpu_n012
# description   : Run tp name
# input         : tp's name
# output        : None
#----------------------------------------------------------------------------------------------
def execute_stl_cpu_n012(tp_name) :

    setup_debug(tp_name)

    # Start testing for CPU_N012
    log_message("=================================")
    log_message("= Test Case: STL_CPU_N012")

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

    # Start testing for TEST ELEMENT 55
    log_message("=    TEST ELEMENT 55:")
    if not check_testpoint(M33_STL_TE55_EXP_VAL1, 1): return False
    if not check_testpoint(M33_STL_TE55_EXP_VAL1, 2): return False
    if not check_testpoint(M33_STL_TE55_EXP_VAL1, 3): return False
    if not check_testpoint(M33_STL_TE55_EXP_VAL1, 4): return False
    if not check_testpoint(M33_STL_TE55_EXP_VAL1, 5): return False
    if not check_testpoint(M33_STL_TE55_EXP_VAL1, 6): return False
    if not check_testpoint(M33_STL_TE55_EXP_VAL1, 7): return False
    if not check_testpoint(M33_STL_TE55_EXP_VAL1, 8): return False
    if not check_testpoint(M33_STL_TE55_EXP_VAL1, 9): return False
    if not check_testpoint(M33_STL_TE55_EXP_VAL2, 10): return False
    if not check_testpoint(M33_STL_TE55_EXP_VAL2, 11): return False
    if not check_testpoint(M33_STL_TE55_EXP_VAL2, 12): return False
    if not check_testpoint(M33_STL_TE55_EXP_VAL2, 13): return False
    if not check_testpoint(M33_STL_TE55_EXP_VAL2, 14): return False
    if not check_testpoint(M33_STL_TE55_EXP_VAL2, 15): return False
    if not check_testpoint(M33_STL_TE55_EXP_VAL2, 16): return False
    if not check_testpoint(M33_STL_TE55_EXP_VAL2, 17): return False
    if not check_testpoint(M33_STL_TE55_EXP_VAL2, 18): return False

    # Start testing for TEST ELEMENT 56
    log_message("=    TEST ELEMENT 56:")
    if not check_testpoint(M33_STL_TE56_EXP_VAL1, 19): return False
    if not check_testpoint(M33_STL_TE56_EXP_VAL2, 20): return False

    # Start testing for TEST ELEMENT 57
    log_message("=    TEST ELEMENT 57:")
    if not check_testpoint(M33_STL_TE57_EXP_VAL1, 21): return False
    if not check_testpoint(M33_STL_TE57_EXP_VAL2, 22): return False

    # Start testing for TEST ELEMENT 58
    log_message("=    TEST ELEMENT 58:")
    if not check_testpoint(M33_STL_TE58_EXP_VAL1, 23): return False
    if not check_testpoint(M33_STL_TE58_EXP_VAL2, 24): return False

    # Start testing for TEST ELEMENT 59
    log_message("=    TEST ELEMENT 59:")
    if not check_testpoint(M33_STL_TE59_EXP_VAL1, 25): return False
    if not check_testpoint(M33_STL_TE59_EXP_VAL2, 26): return False

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

