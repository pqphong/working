#----------------------------------------------------------------------------------------------
# function name : execute_stl_cpu_n005
# description   : Run tp name
# input         : tp's name
# output        : None
#----------------------------------------------------------------------------------------------
def execute_stl_cpu_n005(tp_name) :

    setup_debug(tp_name)

    # Start testing for CPU_N005
    log_message("=================================")
    log_message("= Test Case: STL_CPU_N005")

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

    # Start testing for TEST ELEMENT 27
    log_message("=    TEST ELEMENT 27:")
    if not check_testpoint(M33_STL_TE27_EXP_VAL1, 1): return False
    if not check_testpoint(M33_STL_TE27_EXP_VAL2, 2): return False
    if not check_testpoint(M33_STL_TE27_EXP_VAL3, 3): return False
    if not check_testpoint(M33_STL_TE27_EXP_VAL4, 4): return False
    if not check_testpoint(M33_STL_TE27_EXP_VAL5, 5): return False
    if not check_testpoint(M33_STL_TE27_EXP_VAL6, 6): return False

    # Start testing for TEST ELEMENT 28
    log_message("=    TEST ELEMENT 28:")
    if not check_testpoint(M33_STL_TE28_EXP_VAL1, 7): return False
    if not check_testpoint(M33_STL_TE28_EXP_VAL2, 8): return False
    if not check_testpoint(M33_STL_TE28_EXP_VAL3, 9): return False
    if not check_testpoint(M33_STL_TE28_EXP_VAL4, 10): return False
    if not check_testpoint(M33_STL_TE28_EXP_VAL5, 11): return False
    if not check_testpoint(M33_STL_TE28_EXP_VAL6, 12): return False

    # Start testing for TEST ELEMENT 29
    log_message("=    TEST ELEMENT 29:")
    if not check_testpoint(M33_STL_TE29_EXP_VAL1, 13): return False
    if not check_testpoint(M33_STL_TE29_EXP_VAL2, 14): return False
    if not check_testpoint(M33_STL_TE29_EXP_VAL3, 15): return False
    if not check_testpoint(M33_STL_TE29_EXP_VAL4, 16): return False
    if not check_testpoint(M33_STL_TE29_EXP_VAL5, 17): return False
    if not check_testpoint(M33_STL_TE29_EXP_VAL6, 18): return False

    # Start testing for TEST ELEMENT 30
    log_message("=    TEST ELEMENT 30:")
    if not check_testpoint(M33_STL_TE30_EXP_VAL1, 19): return False
    if not check_testpoint(M33_STL_TE30_EXP_VAL2, 20): return False
    if not check_testpoint(M33_STL_TE30_EXP_VAL3, 21): return False
    if not check_testpoint(M33_STL_TE30_EXP_VAL4, 22): return False
    if not check_testpoint(M33_STL_TE30_EXP_VAL5, 23): return False
    if not check_testpoint(M33_STL_TE30_EXP_VAL6, 24): return False
    if not check_testpoint(M33_STL_TE30_EXP_VAL7, 25): return False
    if not check_testpoint(M33_STL_TE30_EXP_VAL8, 26): return False

    # Start testing for TEST ELEMENT 54
    log_message("=    TEST ELEMENT 54:")
    if not check_testpoint(M33_STL_TE54_EXP_VAL12, 27): return False
    if not check_testpoint(M33_STL_TE54_EXP_VAL34, 28): return False   

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

