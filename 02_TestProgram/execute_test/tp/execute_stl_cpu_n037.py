#----------------------------------------------------------------------------------------------
# function name : execute_stl_cpu_n037
# description   : Run tp name
# input         : tp's name
# output        : None
#----------------------------------------------------------------------------------------------
def execute_stl_cpu_n037(tp_name) :

    setup_debug(tp_name)

    # Start testing for CPU_N037
    log_message("=================================")
    log_message("= Test Case: STL_CPU_N37")

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

    # Start testing for TEST ELEMENT 224
    log_message("=    TEST ELEMENT 224:")
    if not check_testpoint(M33_STL_TE224_EXP_VAL1, 1): return False
    if not check_testpoint(M33_STL_TE224_EXP_VAL2, 2): return False

    # Start testing for TEST ELEMENT 225
    log_message("=    TEST ELEMENT 225:")
    if not check_testpoint(M33_STL_TE225_EXP_VAL1, 3): return False
    if not check_testpoint(M33_STL_TE225_EXP_VAL2, 4): return False
    if not check_testpoint(M33_STL_TE225_EXP_VAL3, 5): return False

    # Start testing for TEST ELEMENT 226
    log_message("=    TEST ELEMENT 226:")
    if not check_testpoint(M33_STL_TE226_EXP_VAL1, 6): return False
    if not check_testpoint(M33_STL_TE226_EXP_VAL2, 7): return False
    if not check_testpoint(M33_STL_TE226_EXP_VAL2, 8): return False
    if not check_testpoint(M33_STL_TE226_EXP_VAL3, 9): return False
    if not check_testpoint(M33_STL_TE226_EXP_VAL4, 10): return False
    if not check_testpoint(M33_STL_TE226_EXP_VAL5, 11): return False

    # Start testing for TEST ELEMENT 227
    log_message("=    TEST ELEMENT 227:")
    if not check_testpoint(M33_STL_TE227_EXP_VAL1, 12): return False
    if not check_testpoint(M33_STL_TE227_EXP_VAL2, 13): return False
    if not check_testpoint(M33_STL_TE227_EXP_VAL3, 14): return False

    # Start testing for TEST ELEMENT 228
    log_message("=    TEST ELEMENT 228:")
    if not check_testpoint(M33_STL_TE228_EXP_VAL1, 15): return False
    if not check_testpoint(M33_STL_TE228_EXP_VAL2, 16): return False

    # Start testing for TEST ELEMENT 230
    log_message("=    TEST ELEMENT 230:")
    if not check_testpoint(M33_STL_TE230_EXP_VAL1, 17): return False
    if not check_testpoint(M33_STL_TE230_EXP_VAL2, 18): return False
    if not check_testpoint(M33_STL_TE230_EXP_VAL3, 19): return False
    if not check_testpoint(M33_STL_TE230_EXP_VAL4, 20): return False
    if not check_testpoint(M33_STL_TE230_EXP_VAL3, 21): return False
    if not check_testpoint(M33_STL_TE230_EXP_VAL1, 22): return False

    # Start testing for TEST ELEMENT 231
    log_message("=    TEST ELEMENT 231:")
    if not check_testpoint(M33_STL_TE231_EXP_VAL1, 23): return False
    if not check_testpoint(M33_STL_TE231_EXP_VAL2, 24): return False
    if not check_testpoint(M33_STL_TE231_EXP_VAL3, 25): return False
    if not check_testpoint(M33_STL_TE231_EXP_VAL1, 26): return False
    if not check_testpoint(M33_STL_TE231_EXP_VAL4, 27): return False
    if not check_testpoint(M33_STL_TE231_EXP_VAL2, 28): return False

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
