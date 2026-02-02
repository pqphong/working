#----------------------------------------------------------------------------------------------
# function name : execute_stl_cpu_n045
# description   : Run tp name
# input         : tp's name
# output        : None
#----------------------------------------------------------------------------------------------
def execute_stl_cpu_n045(tp_name) :

    setup_debug(tp_name)

    # Start testing for CPU_N045
    log_message("=================================")
    log_message("= Test Case: STL_CPU_N45")

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

    # Start testing for TEST ELEMENT 254
    log_message("=    TEST ELEMENT 254")
    if not check_testpoint(M33_STL_TE254_EXP_VAL1, 1): return False
    if not check_testpoint(M33_STL_TE254_EXP_VAL1, 2): return False
    if not check_testpoint(M33_STL_TE254_EXP_VAL1, 3): return False
    if not check_testpoint(M33_STL_TE254_EXP_VAL2, 4): return False
    if not check_testpoint(M33_STL_TE254_EXP_VAL1, 5): return False
    if not check_testpoint(M33_STL_TE254_EXP_VAL3, 6): return False
    if not check_testpoint(M33_STL_TE254_EXP_VAL1, 7): return False
    if not check_testpoint(M33_STL_TE254_EXP_VAL4, 8): return False
    if not check_testpoint(M33_STL_TE254_EXP_VAL5, 9): return False
    if not check_testpoint(M33_STL_TE254_EXP_VAL6, 10): return False
    if not check_testpoint(M33_STL_TE254_EXP_VAL1, 11): return False
    if not check_testpoint(M33_STL_TE254_EXP_VAL7, 12): return False

    # Start testing for TEST ELEMENT 255
    log_message("=    TEST ELEMENT 255")
    if not check_testpoint(M33_STL_TE255_EXP_VAL1, 13): return False
    if not check_testpoint(M33_STL_TE255_EXP_VAL2, 14): return False
    if not check_testpoint(M33_STL_TE255_EXP_VAL1, 15): return False
    if not check_testpoint(M33_STL_TE255_EXP_VAL3, 16): return False
    if not check_testpoint(M33_STL_TE255_EXP_VAL1, 17): return False
    if not check_testpoint(M33_STL_TE255_EXP_VAL4, 18): return False
    if not check_testpoint(M33_STL_TE255_EXP_VAL1, 19): return False
    if not check_testpoint(M33_STL_TE255_EXP_VAL5, 20): return False
    if not check_testpoint(M33_STL_TE255_EXP_VAL6, 21): return False
    if not check_testpoint(M33_STL_TE255_EXP_VAL7, 22): return False
    if not check_testpoint(M33_STL_TE255_EXP_VAL1, 23): return False
    if not check_testpoint(M33_STL_TE255_EXP_VAL8, 24): return False

    # Start testing for TEST ELEMENT 256
    log_message("=    TEST ELEMENT 256")
    if not check_testpoint(M33_STL_TE256_EXP_VAL1, 25): return False
    if not check_testpoint(M33_STL_TE256_EXP_VAL1, 26): return False
    if not check_testpoint(M33_STL_TE256_EXP_VAL1, 27): return False
    if not check_testpoint(M33_STL_TE256_EXP_VAL2, 28): return False
    if not check_testpoint(M33_STL_TE256_EXP_VAL1, 29): return False
    if not check_testpoint(M33_STL_TE256_EXP_VAL3, 30): return False
    if not check_testpoint(M33_STL_TE256_EXP_VAL1, 31): return False
    if not check_testpoint(M33_STL_TE256_EXP_VAL4, 32): return False
    if not check_testpoint(M33_STL_TE256_EXP_VAL5, 33): return False
    if not check_testpoint(M33_STL_TE256_EXP_VAL6, 34): return False
    if not check_testpoint(M33_STL_TE256_EXP_VAL1, 35): return False
    if not check_testpoint(M33_STL_TE256_EXP_VAL7, 36): return False

    # Start testing for TEST ELEMENT 257
    log_message("=    TEST ELEMENT 257")
    if not check_testpoint(M33_STL_TE257_EXP_VAL1, 37): return False
    if not check_testpoint(M33_STL_TE257_EXP_VAL2, 38): return False
    if not check_testpoint(M33_STL_TE257_EXP_VAL1, 39): return False
    if not check_testpoint(M33_STL_TE257_EXP_VAL3, 40): return False
    if not check_testpoint(M33_STL_TE257_EXP_VAL1, 41): return False
    if not check_testpoint(M33_STL_TE257_EXP_VAL4, 42): return False
    if not check_testpoint(M33_STL_TE257_EXP_VAL1, 43): return False
    if not check_testpoint(M33_STL_TE257_EXP_VAL5, 44): return False
    if not check_testpoint(M33_STL_TE257_EXP_VAL6, 45): return False
    if not check_testpoint(M33_STL_TE257_EXP_VAL7, 46): return False
    if not check_testpoint(M33_STL_TE257_EXP_VAL1, 47): return False
    if not check_testpoint(M33_STL_TE257_EXP_VAL8, 48): return False

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
