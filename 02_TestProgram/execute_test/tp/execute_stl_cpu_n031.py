#----------------------------------------------------------------------------------------------
# function name : execute_stl_cpu_n031
# description   : Run tp name
# input         : tp's name
# output        : None
#----------------------------------------------------------------------------------------------
def execute_stl_cpu_n031(tp_name) :

    setup_debug(tp_name)

    # Start testing for CPU_N031
    log_message("=================================")
    log_message("= Test Case: STL_CPU_N31")

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

    # Start testing for TEST ELEMENT 183
    log_message("=    TEST ELEMENT 183:")
    if not check_testpoint(M33_STL_TE183_EXP_VAL1, 1): return False
    if not check_testpoint(M33_STL_TE183_EXP_VAL2, 2): return False
    if not check_testpoint(M33_STL_TE183_EXP_VAL3, 3): return False
    if not check_testpoint(M33_STL_TE183_EXP_VAL4, 4): return False
    if not check_testpoint(M33_STL_TE183_EXP_VAL6, 5): return False
    if not check_testpoint(M33_STL_TE183_EXP_VAL5, 6): return False
    if not check_testpoint(M33_STL_TE183_EXP_VAL1, 7): return False
    if not check_testpoint(M33_STL_TE183_EXP_VAL2, 8): return False
    if not check_testpoint(M33_STL_TE183_EXP_VAL2, 9): return False
    if not check_testpoint(M33_STL_TE183_EXP_VAL5, 10): return False

    # Start testing for TEST ELEMENT 184
    log_message("=    TEST ELEMENT 184:")
    if not check_testpoint(M33_STL_TE184_EXP_VAL6, 11): return False
    if not check_testpoint(M33_STL_TE184_EXP_VAL7, 12): return False
    if not check_testpoint(M33_STL_TE184_EXP_VAL8, 13): return False
    if not check_testpoint(M33_STL_TE184_EXP_VAL2, 14): return False
    if not check_testpoint(M33_STL_TE184_EXP_VAL1, 15): return False
    if not check_testpoint(M33_STL_TE184_EXP_VAL3, 16): return False
    if not check_testpoint(M33_STL_TE184_EXP_VAL4, 17): return False
    if not check_testpoint(M33_STL_TE184_EXP_VAL2, 18): return False
    if not check_testpoint(M33_STL_TE184_EXP_VAL5, 19): return False
    if not check_testpoint(M33_STL_TE184_EXP_VAL1, 20): return False
    if not check_testpoint(M33_STL_TE184_EXP_VAL1, 21): return False
    if not check_testpoint(M33_STL_TE184_EXP_VAL3, 22): return False

    # Start testing for TEST ELEMENT 188
    log_message("=    TEST ELEMENT 188:")
    if not check_testpoint(M33_STL_TE188_EXP_VAL1, 23): return False
    if not check_testpoint(M33_STL_TE188_EXP_VAL2, 24): return False
    if not check_testpoint(M33_STL_TE188_EXP_VAL3, 25): return False
    if not check_testpoint(M33_STL_TE188_EXP_VAL4, 26): return False
    if not check_testpoint(M33_STL_TE188_EXP_VAL5, 27): return False

    # Start testing for TEST ELEMENT 189
    log_message("=    TEST ELEMENT 189:")
    if not check_testpoint(M33_STL_TE189_EXP_VAL1, 28): return False
    if not check_testpoint(M33_STL_TE189_EXP_VAL2, 29): return False
    if not check_testpoint(M33_STL_TE189_EXP_VAL3, 30): return False
    if not check_testpoint(M33_STL_TE189_EXP_VAL4, 31): return False
    if not check_testpoint(M33_STL_TE189_EXP_VAL5, 32): return False

    # Start testing for TEST ELEMENT 190
    log_message("=    TEST ELEMENT 190:")
    if not check_testpoint(M33_STL_TE190_EXP_VAL1, 33): return False
    if not check_testpoint(M33_STL_TE190_EXP_VAL2, 34): return False
    if not check_testpoint(M33_STL_TE190_EXP_VAL3, 35): return False
    if not check_testpoint(M33_STL_TE190_EXP_VAL4, 36): return False

    # Start testing for TEST ELEMENT 202
    log_message("=    TEST ELEMENT 202:")
    if not check_testpoint(M33_STL_TE202_EXP_VAL1, 37): return False
    if not check_testpoint(M33_STL_TE202_EXP_VAL6, 38): return False
    if not check_testpoint(M33_STL_TE202_EXP_VAL2, 39): return False
    if not check_testpoint(M33_STL_TE202_EXP_VAL7, 40): return False
    if not check_testpoint(M33_STL_TE202_EXP_VAL3, 41): return False
    if not check_testpoint(M33_STL_TE202_EXP_VAL7, 42): return False
    if not check_testpoint(M33_STL_TE202_EXP_VAL9, 43): return False
    if not check_testpoint(M33_STL_TE202_EXP_VAL10, 44): return False
    if not check_testpoint(M33_STL_TE202_EXP_VAL4, 45): return False

    # Start testing for TEST ELEMENT 182
    log_message("=    TEST ELEMENT 182:")
    if not check_testpoint(M33_STL_TE202_EXP_VAL8, 46): return False
    if not check_testpoint(M33_STL_TE202_EXP_VAL5, 47): return False
    if not check_testpoint(M33_STL_TE202_EXP_VAL8, 48): return False
    if not check_testpoint(M33_STL_TE202_EXP_VAL11, 49): return False
    if not check_testpoint(M33_STL_TE202_EXP_VAL12, 50): return False

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
