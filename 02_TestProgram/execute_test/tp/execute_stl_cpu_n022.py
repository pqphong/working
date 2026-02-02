#----------------------------------------------------------------------------------------------
# function name : execute_stl_cpu_n022
# description   : Run tp name
# input         : tp's name
# output        : None
#----------------------------------------------------------------------------------------------
def execute_stl_cpu_n022(tp_name) :

    setup_debug(tp_name)

    # Start testing for CPU_N022
    log_message("=================================")
    log_message("= Test Case: STL_CPU_N022")

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

    # Start testing for TEST ELEMENT 141
    log_message("=    TEST ELEMENT 141:")
    if not check_testpoint(M33_STL_TE141_EXP_VAL1, 1): return False
    if not check_testpoint(M33_STL_TE141_EXP_VAL2, 2): return False
    if not check_testpoint(M33_STL_TE141_EXP_VAL3, 3): return False
    if not check_testpoint(M33_STL_TE141_EXP_VAL3, 4): return False
    if not check_testpoint(M33_STL_TE141_EXP_VAL3, 5): return False
    if not check_testpoint(M33_STL_TE141_EXP_VAL1, 6): return False
    if not check_testpoint(M33_STL_TE141_EXP_VAL3, 7): return False
    if not check_testpoint(M33_STL_TE141_EXP_VAL4, 8): return False

    # Start testing for TEST ELEMENT 142
    log_message("=    TEST ELEMENT 142:")
    if not check_testpoint(M33_STL_TE142_EXP_VAL1, 9): return False
    if not check_testpoint(M33_STL_TE142_EXP_VAL2, 10): return False
    if not check_testpoint(M33_STL_TE142_EXP_VAL3, 11): return False
    if not check_testpoint(M33_STL_TE142_EXP_VAL2, 12): return False
    if not check_testpoint(M33_STL_TE142_EXP_VAL4, 13): return False
    if not check_testpoint(M33_STL_TE142_EXP_VAL1, 14): return False
    if not check_testpoint(M33_STL_TE142_EXP_VAL2, 15): return False
    if not check_testpoint(M33_STL_TE142_EXP_VAL5, 16): return False
    
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
