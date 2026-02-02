#----------------------------------------------------------------------------------------------
# function name : execute_stl_cpu_n000
# description   : Run tp name
# input         : tp's name
# output        : None
#----------------------------------------------------------------------------------------------
def execute_stl_cpu_n000(tp_name) :
    
    setup_debug(tp_name)

    # Start testing for CPU_N000
    log_message("=================================")
    log_message("= Test Case: STL_CPU_N000")
    
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
    # Start testing for TEST ELEMENT 1
    log_message("=    TEST ELEMENT 1:")
    if not check_testpoint(M33_STL_TE1_EXP_VAL4, 1): return False
    if not check_testpoint(M33_STL_TE1_EXP_VAL1, 2): return False
    if not check_testpoint(M33_STL_TE1_EXP_VAL5, 3): return False
    if not check_testpoint(M33_STL_TE1_EXP_VAL2, 4): return False
    if not check_testpoint(M33_STL_TE1_EXP_VAL6, 5): return False
    if not check_testpoint(M33_STL_TE1_EXP_VAL3, 6): return False
    
    # Start testing for TEST ELEMENT 2
    log_message("=    TEST ELEMENT 2:")
    if not check_testpoint(M33_STL_TE2_EXP_VAL1, 7): return False
    if not check_testpoint(M33_STL_TE2_EXP_VAL2, 8): return False
    if not check_testpoint(M33_STL_TE2_EXP_VAL3, 9): return False
    
    # Start testing for TEST ELEMENT 3
    log_message("=    TEST ELEMENT 3:")
    if not check_testpoint(M33_STL_TE3_EXP_VAL1, 10): return False
    if not check_testpoint(M33_STL_TE3_EXP_VAL2, 11): return False
    if not check_testpoint(M33_STL_TE3_EXP_VAL3, 12): return False

    # Start testing for TEST ELEMENT 4
    log_message("=    TEST ELEMENT 4:")
    if not check_testpoint(M33_STL_TE4_EXP_VAL1, 13): return False
    if not check_testpoint(M33_STL_TE4_EXP_VAL2, 14): return False
    if not check_testpoint(M33_STL_TE4_EXP_VAL3, 15): return False

    # Start testing for TEST ELEMENT 5
    log_message("=    TEST ELEMENT 5:")
    if not check_testpoint(M33_STL_TE5_EXP_VAL1, 16): return False
    if not check_testpoint(M33_STL_TE5_EXP_VAL2, 17): return False
    if not check_testpoint(M33_STL_TE5_EXP_VAL3, 18): return False

    # Start testing for TEST ELEMENT 6
    log_message("=    TEST ELEMENT 6:")
    if not check_testpoint(M33_STL_TE6_EXP_VAL1, 19): return False
    if not check_testpoint(M33_STL_TE6_EXP_VAL2, 20): return False
    if not check_testpoint(M33_STL_TE6_EXP_VAL3, 21): return False

    # Start testing for TEST ELEMENT 39
    log_message("=    TEST ELEMENT 39:")
    if not check_testpoint(M33_STL_TE39_EXP_VAL1, 22): return False
    if not check_testpoint(M33_STL_TE39_EXP_VAL2, 23): return False
    if not check_testpoint(M33_STL_TE39_EXP_VAL3, 24): return False

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

