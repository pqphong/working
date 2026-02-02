#----------------------------------------------------------------------------------------------
# function name : execute_stl_cpu_n044
# description   : Run tp name
# input         : tp's name
# output        : None
#----------------------------------------------------------------------------------------------
def execute_stl_cpu_n044(tp_name) :

    setup_debug(tp_name)

    # Start testing for CPU_N044
    log_message("=================================")
    log_message("= Test Case: STL_CPU_N44")

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

    # Start testing for TEST ELEMENT 245
    log_message("=    TEST ELEMENT 245")
    if not check_testpoint(M33_STL_TE245_EXP_VAL1, 1): return False
    if not check_testpoint(M33_STL_TE245_EXP_VAL7, 2): return False
    if not check_testpoint(M33_STL_TE245_EXP_VAL2, 3): return False
    if not check_testpoint(M33_STL_TE245_EXP_VAL6, 4): return False
    if not check_testpoint(M33_STL_TE245_EXP_VAL1, 5): return False
    if not check_testpoint(M33_STL_TE245_EXP_VAL6, 6): return False
    if not check_testpoint(M33_STL_TE245_EXP_VAL3, 7): return False
    if not check_testpoint(M33_STL_TE245_EXP_VAL6, 8): return False
    if not check_testpoint(M33_STL_TE245_EXP_VAL1, 9): return False
    if not check_testpoint(M33_STL_TE245_EXP_VAL6, 10): return False
    if not check_testpoint(M33_STL_TE245_EXP_VAL4, 11): return False
    if not check_testpoint(M33_STL_TE245_EXP_VAL6, 12): return False
    if not check_testpoint(M33_STL_TE245_EXP_VAL5, 13): return False
    if not check_testpoint(M33_STL_TE245_EXP_VAL7, 14): return False
    if not check_testpoint(M33_STL_TE245_EXP_VAL1, 15): return False
    if not check_testpoint(M33_STL_TE245_EXP_VAL7, 16): return False
    if not check_testpoint(M33_STL_TE245_EXP_VAL3, 17): return False
    if not check_testpoint(M33_STL_TE245_EXP_VAL6, 18): return False
    if not check_testpoint(M33_STL_TE245_EXP_VAL2, 19): return False
    if not check_testpoint(M33_STL_TE245_EXP_VAL7, 20): return False
    if not check_testpoint(M33_STL_TE245_EXP_VAL4, 21): return False
    if not check_testpoint(M33_STL_TE245_EXP_VAL7, 22): return False
    if not check_testpoint(M33_STL_TE245_EXP_VAL4, 23): return False
    if not check_testpoint(M33_STL_TE245_EXP_VAL6, 24): return False
    if not check_testpoint(M33_STL_TE245_EXP_VAL2, 25): return False
    if not check_testpoint(M33_STL_TE245_EXP_VAL6, 26): return False

    # Start testing for TEST ELEMENT 325
    log_message("=    TEST ELEMENT 325")
    if not check_testpoint(M33_STL_TE325_EXP_VAL1, 27): return False
    if not check_testpoint(M33_STL_TE325_EXP_VAL1, 28): return False
    if not check_testpoint(M33_STL_TE325_EXP_VAL2, 29): return False
    if not check_testpoint(M33_STL_TE325_EXP_VAL1, 30): return False
    if not check_testpoint(M33_STL_TE325_EXP_VAL3, 31): return False
    if not check_testpoint(M33_STL_TE325_EXP_VAL4, 32): return False

    # Start testing for TEST ELEMENT 326
    log_message("=    TEST ELEMENT 326")
    if not check_testpoint(M33_STL_TE326_EXP_VAL1, 33): return False
    if not check_testpoint(M33_STL_TE326_EXP_VAL1, 34): return False
    if not check_testpoint(M33_STL_TE326_EXP_VAL1, 35): return False
    if not check_testpoint(M33_STL_TE326_EXP_VAL2, 36): return False
    if not check_testpoint(M33_STL_TE326_EXP_VAL3, 37): return False
    if not check_testpoint(M33_STL_TE326_EXP_VAL4, 38): return False

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
