#----------------------------------------------------------------------------------------------
# function name : execute_stl_cpu_n019
# description   : Run tp name
# input         : tp's name
# output        : None
#----------------------------------------------------------------------------------------------
def execute_stl_cpu_n019(tp_name) :

    setup_debug(tp_name)

    # Start testing for CPU_N019
    log_message("=================================")
    log_message("= Test Case: STL_CPU_N019")

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

    # Start testing for TEST ELEMENT 328
    log_message("=    TEST ELEMENT 328")
    if not check_testpoint(M33_STL_TE328_EXP_VAL1, 1): return False
    if not check_testpoint(M33_STL_TE328_EXP_VAL2, 2): return False
    if not check_testpoint(M33_STL_TE328_EXP_VAL3, 3): return False
    if not check_testpoint(M33_STL_TE328_EXP_VAL4, 4): return False
    if not check_testpoint(M33_STL_TE328_EXP_VAL5, 5): return False
    if not check_testpoint(M33_STL_TE328_EXP_VAL6, 6): return False
    if not check_testpoint(M33_STL_TE328_EXP_VAL7, 7): return False
    if not check_testpoint(M33_STL_TE328_EXP_VAL8, 8): return False
    if not check_testpoint(M33_STL_TE328_EXP_VAL9, 9): return False
    if not check_testpoint(M33_STL_TE328_EXP_VAL10, 10): return False
    if not check_testpoint(M33_STL_TE328_EXP_VAL11, 11): return False
    if not check_testpoint(M33_STL_TE328_EXP_VAL12, 12): return False
    if not check_testpoint(M33_STL_TE328_EXP_VAL13, 13): return False
    if not check_testpoint(M33_STL_TE328_EXP_VAL14, 14): return False
    if not check_testpoint(M33_STL_TE328_EXP_VAL15, 15): return False
    if not check_testpoint(M33_STL_TE328_EXP_VAL16, 16): return False
    if not check_testpoint(M33_STL_TE328_EXP_VAL17, 17): return False
    if not check_testpoint(M33_STL_TE328_EXP_VAL18, 18): return False
    if not check_testpoint(M33_STL_TE328_EXP_VAL19, 19): return False
    if not check_testpoint(M33_STL_TE328_EXP_VAL20, 20): return False

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

