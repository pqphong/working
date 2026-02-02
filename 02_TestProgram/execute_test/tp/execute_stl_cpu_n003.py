#----------------------------------------------------------------------------------------------
# function name : execute_stl_cpu_n003
# description   : Run tp name
# input         : tp's name
# output        : None
#----------------------------------------------------------------------------------------------
def execute_stl_cpu_n003(tp_name) :

    setup_debug(tp_name)

    # Start testing for CPU_N003
    log_message("=================================")
    log_message("= Test Case: STL_CPU_N003")

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

    # Start testing for TEST ELEMENT 16
    log_message("=    TEST ELEMENT 16:")
    if not check_testpoint(M33_STL_TE16_EXP_VAL1, 1): return False
    if not check_testpoint(M33_STL_TE16_EXP_VAL2, 2): return False
    if not check_testpoint(M33_STL_TE16_EXP_VAL3, 3): return False
    if not check_testpoint(M33_STL_TE16_EXP_VAL4, 4): return False

    # Start testing for TEST ELEMENT 17
    log_message("=    TEST ELEMENT 17:")
    if not check_testpoint(M33_STL_TE17_EXP_VAL1, 5): return False
    if not check_testpoint(M33_STL_TE17_EXP_VAL2, 6): return False
    if not check_testpoint(M33_STL_TE17_EXP_VAL3, 7): return False
    if not check_testpoint(M33_STL_TE17_EXP_VAL4, 8): return False

    # Start testing for TEST ELEMENT 18
    log_message("=    TEST ELEMENT 18:")
    if not check_testpoint(M33_STL_TE18_EXP_VAL1, 9): return False
    if not check_testpoint(M33_STL_TE18_EXP_VAL2, 10): return False
    if not check_testpoint(M33_STL_TE18_EXP_VAL3, 11): return False
    if not check_testpoint(M33_STL_TE18_EXP_VAL4, 12): return False

    # Start testing for TEST ELEMENT 19
    log_message("=    TEST ELEMENT 19:")
    if not check_testpoint(M33_STL_TE19_EXP_VAL1, 13): return False
    if not check_testpoint(M33_STL_TE19_EXP_VAL2, 14): return False
    if not check_testpoint(M33_STL_TE19_EXP_VAL3, 15): return False
    if not check_testpoint(M33_STL_TE19_EXP_VAL4, 16): return False

    # Start testing for TEST ELEMENT 37
    log_message("=    TEST ELEMENT 37:")
    if not check_testpoint(M33_STL_TE37_EXP_VAL1, 17): return False
    if not check_testpoint(M33_STL_TE37_EXP_VAL2, 18): return False
    if not check_testpoint(M33_STL_TE37_EXP_VAL3, 19): return False
    if not check_testpoint(M33_STL_TE37_EXP_VAL4, 20): return False

    # Start testing for TEST ELEMENT 38
    log_message("=    TEST ELEMENT 38:")
    if not check_testpoint(M33_STL_TE38_EXP_VAL1, 21): return False
    if not check_testpoint(M33_STL_TE38_EXP_VAL2, 22): return False
    if not check_testpoint(M33_STL_TE38_EXP_VAL3, 23): return False
    if not check_testpoint(M33_STL_TE38_EXP_VAL4, 24): return False

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

