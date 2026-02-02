#----------------------------------------------------------------------------------------------
# function name : execute_stl_cpu_n025
# description   : Run tp name
# input         : tp's name
# output        : None
#----------------------------------------------------------------------------------------------
def execute_stl_cpu_n025(tp_name) :

    setup_debug(tp_name)

    # Start testing for CPU_N025
    log_message("=================================")
    log_message("= Test Case: STL_CPU_N025")

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

    # Start testing for TEST ELEMENT 137
    log_message("=    TEST ELEMENT 137:")
    if not check_testpoint(M33_STL_TE136_EXP_VAL1, 1): return False
    if not check_testpoint(M33_STL_TE136_EXP_VAL2, 2): return False
    if not check_testpoint(M33_STL_TE136_EXP_VAL3, 3): return False

    # Start testing for TEST ELEMENT 136
    log_message("=    TEST ELEMENT 136:")
    if not check_testpoint(M33_STL_TE137_EXP_VAL1, 4): return False
    if not check_testpoint(M33_STL_TE137_EXP_VAL2, 5): return False
    if not check_testpoint(M33_STL_TE137_EXP_VAL3, 6): return False

    # Start testing for TEST ELEMENT 138
    log_message("=    TEST ELEMENT 138:")
    if not check_testpoint(M33_STL_TE138_EXP_VAL2, 7): return False
    if not check_testpoint(M33_STL_TE138_EXP_VAL1, 8): return False
    if not check_testpoint(M33_STL_TE138_EXP_VAL1, 9): return False
    if not check_testpoint(M33_STL_TE138_EXP_VAL4, 10): return False
    if not check_testpoint(M33_STL_TE138_EXP_VAL3, 11): return False
    if not check_testpoint(M33_STL_TE138_EXP_VAL3, 12): return False
    if not check_testpoint(M33_STL_TE138_EXP_VAL3, 13): return False
    if not check_testpoint(M33_STL_TE138_EXP_VAL3, 14): return False
    if not check_testpoint(M33_STL_TE138_EXP_VAL6, 15): return False
    if not check_testpoint(M33_STL_TE138_EXP_VAL5, 16): return False
    if not check_testpoint(M33_STL_TE138_EXP_VAL5, 17): return False

    # Start testing for TEST ELEMENT 139
    log_message("=    TEST ELEMENT 139:")
    if not check_testpoint(M33_STL_TE139_EXP_VAL1, 18): return False
    if not check_testpoint(M33_STL_TE139_EXP_VAL2, 19): return False
    if not check_testpoint(M33_STL_TE139_EXP_VAL3, 20): return False
    if not check_testpoint(M33_STL_TE139_EXP_VAL4, 21): return False
    if not check_testpoint(M33_STL_TE139_EXP_VAL4, 22): return False
    if not check_testpoint(M33_STL_TE139_EXP_VAL5, 23): return False

    # Start testing for TEST ELEMENT 140
    log_message("=    TEST ELEMENT 140:")
    if not check_testpoint(M33_STL_TE140_EXP_VAL1, 24): return False
    if not check_testpoint(M33_STL_TE140_EXP_VAL2, 25): return False
    if not check_testpoint(M33_STL_TE140_EXP_VAL3, 26): return False

    # Start testing for TEST ELEMENT 186
    log_message("=    TEST ELEMENT 186:")
    if not check_testpoint(M33_STL_TE186_EXP_VAL1, 27): return False
    if not check_testpoint(M33_STL_TE186_EXP_VAL2, 28): return False
    if not check_testpoint(M33_STL_TE186_EXP_VAL3, 29): return False

    # Start testing for TEST ELEMENT 187
    log_message("=    TEST ELEMENT 187:")
    if not check_testpoint(M33_STL_TE187_EXP_VAL1, 30): return False
    if not check_testpoint(M33_STL_TE187_EXP_VAL2, 31): return False
    if not check_testpoint(M33_STL_TE187_EXP_VAL3, 32): return False
    if not check_testpoint(M33_STL_TE187_EXP_VAL1, 33): return False

    # Start testing for TEST ELEMENT 217
    log_message("=    TEST ELEMENT 217:")
    if not check_testpoint(M33_STL_TE217_EXP_VAL1, 34): return False
    if not check_testpoint(M33_STL_TE217_EXP_VAL2, 35): return False
    if not check_testpoint(M33_STL_TE217_EXP_VAL3, 36): return False

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
