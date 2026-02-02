
#----------------------------------------------------------------------------------------------
# function name : execute_stl_cpu_n011
# description   : Run tp name
# input         : tp's name
# output        : None
#----------------------------------------------------------------------------------------------
def execute_stl_cpu_n011(tp_name) :

    setup_debug(tp_name)

    # Start testing for CPU_N011
    log_message("=================================")
    log_message("= Test Case: STL_CPU_N011")

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

    # Start testing for TEST ELEMENT 47
    log_message("=    TEST ELEMENT 47:")
    if not check_testpoint(M33_STL_TE47_EXP_VAL1, 1): return False
    if not check_testpoint(M33_STL_TE47_EXP_VAL2, 2): return False

    # Start testing for TEST ELEMENT 48
    log_message("=    TEST ELEMENT 48:")
    if not check_testpoint(M33_STL_TE48_EXP_VAL1, 3): return False
    if not check_testpoint(M33_STL_TE48_EXP_VAL2, 4): return False

    # Start testing for TEST ELEMENT 49
    log_message("=    TEST ELEMENT 49:")
    if not check_testpoint(M33_STL_TE49_EXP_VAL1, 5): return False
    if not check_testpoint(M33_STL_TE49_EXP_VAL2, 6): return False

    # Start testing for TEST ELEMENT 50
    log_message("=    TEST ELEMENT 50:")
    if not check_testpoint(M33_STL_TE50_EXP_VAL1, 7): return False
    if not check_testpoint(M33_STL_TE50_EXP_VAL2, 8): return False

    # Start testing for TEST ELEMENT 51
    log_message("=    TEST ELEMENT 51:")
    if not check_testpoint(M33_STL_TE51_EXP_VAL1, 9): return False
    if not check_testpoint(M33_STL_TE51_EXP_VAL2, 10): return False

    # Start testing for TEST ELEMENT 52
    log_message("=    TEST ELEMENT 52:")
    if not check_testpoint(M33_STL_TE52_EXP_VAL1, 11): return False
    if not check_testpoint(M33_STL_TE52_EXP_VAL2, 12): return False

    # Start testing for TEST ELEMENT 53
    log_message("=    TEST ELEMENT 53:")
    if not check_testpoint(M33_STL_TE53_EXP_VAL1, 13): return False
    if not check_testpoint(M33_STL_TE53_EXP_VAL2, 14): return False

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

