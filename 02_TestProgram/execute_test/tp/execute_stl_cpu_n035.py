#----------------------------------------------------------------------------------------------
# function name : execute_stl_cpu_n035
# description   : Run tp name
# input         : tp's name
# output        : None
#----------------------------------------------------------------------------------------------
def execute_stl_cpu_n035(tp_name) :

    setup_debug(tp_name)

    # Start testing for CPU_N035
    log_message("=================================")
    log_message("= Test Case: STL_CPU_N35")

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

    # Start testing for TEST ELEMENT 215
    log_message("=    TEST ELEMENT 215:")
    if not check_testpoint(M33_STL_TE215_EXP_VAL1, 1): return False
    if not check_testpoint(M33_STL_TE215_EXP_VAL2, 2): return False
    if not check_testpoint(M33_STL_TE215_EXP_VAL3, 3): return False
    if not check_testpoint(M33_STL_TE215_EXP_VAL4, 4): return False
    if not check_testpoint(M33_STL_TE215_EXP_VAL5, 5): return False
    if not check_testpoint(M33_STL_TE215_EXP_VAL6, 6): return False
    if not check_testpoint(M33_STL_TE215_EXP_VAL7, 7): return False
    if not check_testpoint(M33_STL_TE215_EXP_VAL8, 8): return False

    # Start testing for TEST ELEMENT 216
    log_message("=    TEST ELEMENT 216:")
    if not check_testpoint(M33_STL_TE216_EXP_VAL1, 9): return False
    if not check_testpoint(M33_STL_TE216_EXP_VAL2, 10): return False
    if not check_testpoint(M33_STL_TE216_EXP_VAL3, 11): return False
    if not check_testpoint(M33_STL_TE216_EXP_VAL4, 12): return False
    if not check_testpoint(M33_STL_TE216_EXP_VAL9, 13): return False
    if not check_testpoint(M33_STL_TE216_EXP_VAL2, 14): return False
    if not check_testpoint(M33_STL_TE216_EXP_VAL5, 15): return False
    if not check_testpoint(M33_STL_TE216_EXP_VAL6, 16): return False
    if not check_testpoint(M33_STL_TE216_EXP_VAL7, 17): return False
    if not check_testpoint(M33_STL_TE216_EXP_VAL8, 18): return False
    if not check_testpoint(M33_STL_TE216_EXP_VAL8, 19): return False
    if not check_testpoint(M33_STL_TE216_EXP_VAL4, 20): return False

    # Start testing for TEST ELEMENT 218
    log_message("=    TEST ELEMENT 218:")
    if not check_testpoint(M33_STL_TE218_EXP_VAL1, 21): return False
    if not check_testpoint(M33_STL_TE218_EXP_VAL2, 22): return False
    if not check_testpoint(M33_STL_TE218_EXP_VAL3, 23): return False
    if not check_testpoint(M33_STL_TE218_EXP_VAL2, 24): return False

    # Start testing for TEST ELEMENT 219
    log_message("=    TEST ELEMENT 219:")
    if not check_testpoint(M33_STL_TE219_EXP_VAL1, 25): return False
    if not check_testpoint(M33_STL_TE219_EXP_VAL1, 26): return False
    if not check_testpoint(M33_STL_TE219_EXP_VAL2, 27): return False
    if not check_testpoint(M33_STL_TE219_EXP_VAL3, 28): return False
    if not check_testpoint(M33_STL_TE219_EXP_VAL4, 29): return False
    if not check_testpoint(M33_STL_TE219_EXP_VAL5, 30): return False
    
    # Start testing for TEST ELEMENT 220
    log_message("=    TEST ELEMENT 220:")
    if not check_testpoint(M33_STL_TE220_EXP_VAL1, 31): return False
    if not check_testpoint(M33_STL_TE220_EXP_VAL1, 32): return False
    if not check_testpoint(M33_STL_TE220_EXP_VAL2, 33): return False
    if not check_testpoint(M33_STL_TE220_EXP_VAL3, 34): return False

    # Start testing for TEST ELEMENT 229
    log_message("=    TEST ELEMENT 229:")
    if not check_testpoint(M33_STL_TE229_EXP_VAL1, 35): return False
    if not check_testpoint(M33_STL_TE229_EXP_VAL2, 36): return False
    if not check_testpoint(M33_STL_TE229_EXP_VAL3, 37): return False
    if not check_testpoint(M33_STL_TE229_EXP_VAL6, 38): return False
    if not check_testpoint(M33_STL_TE229_EXP_VAL4, 39): return False
    if not check_testpoint(M33_STL_TE229_EXP_VAL2, 40): return False
    if not check_testpoint(M33_STL_TE229_EXP_VAL5, 41): return False
    if not check_testpoint(M33_STL_TE229_EXP_VAL7, 42): return False

    # Start testing for TEST ELEMENT 232
    log_message("=    TEST ELEMENT 232:")
    if not check_testpoint(M33_STL_TE232_EXP_VAL1, 43): return False
    if not check_testpoint(M33_STL_TE232_EXP_VAL2, 44): return False
    if not check_testpoint(M33_STL_TE232_EXP_VAL3, 45): return False
    if not check_testpoint(M33_STL_TE232_EXP_VAL6, 46): return False
    if not check_testpoint(M33_STL_TE232_EXP_VAL4, 47): return False
    if not check_testpoint(M33_STL_TE232_EXP_VAL7, 48): return False
    if not check_testpoint(M33_STL_TE232_EXP_VAL5, 49): return False
    if not check_testpoint(M33_STL_TE232_EXP_VAL8, 50): return False
    if not check_testpoint(M33_STL_TE232_EXP_VAL9, 51): return False
    if not check_testpoint(M33_STL_TE232_EXP_VAL6, 52): return False

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
