#----------------------------------------------------------------------------------------------
# function name : execute_stl_cpu_n024
# description   : Run tp name
# input         : tp's name
# output        : None
#----------------------------------------------------------------------------------------------
def execute_stl_cpu_n024(tp_name) :

    setup_debug(tp_name)

    # Start testing for CPU_N024
    log_message("=================================")
    log_message("= Test Case: STL_CPU_N024")

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

    # Start testing for TEST ELEMENT 132
    log_message("=    TEST ELEMENT 132:")
    if not check_testpoint(M33_STL_TE132_EXP_VAL1, 1): return False
    if not check_testpoint(M33_STL_TE132_EXP_VAL2, 2): return False
    if not check_testpoint(M33_STL_TE132_EXP_VAL3, 3): return False
    if not check_testpoint(M33_STL_TE132_EXP_VAL5, 4): return False
    if not check_testpoint(M33_STL_TE132_EXP_VAL6, 5): return False
    if not check_testpoint(M33_STL_TE132_EXP_VAL1, 6): return False
    if not check_testpoint(M33_STL_TE132_EXP_VAL8, 7): return False
    if not check_testpoint(M33_STL_TE132_EXP_VAL7, 8): return False
    if not check_testpoint(M33_STL_TE132_EXP_VAL8, 9): return False
    if not check_testpoint(M33_STL_TE132_EXP_VAL9, 10): return False
    if not check_testpoint(M33_STL_TE132_EXP_VAL10, 11): return False
    if not check_testpoint(M33_STL_TE132_EXP_VAL4, 12): return False
    if not check_testpoint(M33_STL_TE132_EXP_VAL1, 13): return False

    # Start testing for TEST ELEMENT 143
    log_message("=    TEST ELEMENT 143:")
    if not check_testpoint(M33_STL_TE143_EXP_VAL1, 14): return False
    if not check_testpoint(M33_STL_TE143_EXP_VAL1, 15): return False
    if not check_testpoint(M33_STL_TE143_EXP_VAL2, 16): return False
    if not check_testpoint(M33_STL_TE143_EXP_VAL2, 17): return False
    if not check_testpoint(M33_STL_TE143_EXP_VAL6, 18): return False
    if not check_testpoint(M33_STL_TE143_EXP_VAL3, 19): return False
    if not check_testpoint(M33_STL_TE143_EXP_VAL3, 20): return False
    if not check_testpoint(M33_STL_TE143_EXP_VAL7, 21): return False
    if not check_testpoint(M33_STL_TE143_EXP_VAL8, 22): return False
    if not check_testpoint(M33_STL_TE143_EXP_VAL6, 23): return False
    if not check_testpoint(M33_STL_TE143_EXP_VAL11, 24): return False
    if not check_testpoint(M33_STL_TE143_EXP_VAL6, 25): return False
    if not check_testpoint(M33_STL_TE143_EXP_VAL12, 26): return False
    if not check_testpoint(M33_STL_TE143_EXP_VAL9, 27): return False
    if not check_testpoint(M33_STL_TE143_EXP_VAL10, 28): return False
    if not check_testpoint(M33_STL_TE143_EXP_VAL13, 29): return False
    if not check_testpoint(M33_STL_TE143_EXP_VAL14, 30): return False
    if not check_testpoint(M33_STL_TE143_EXP_VAL9, 31): return False
    if not check_testpoint(M33_STL_TE143_EXP_VAL10, 32): return False
    
    # Start testing for TEST ELEMENT 158
    log_message("=    TEST ELEMENT 158:")
    if not check_testpoint(M33_STL_TE158_EXP_VAL1, 33): return False
    if not check_testpoint(M33_STL_TE158_EXP_VAL1, 34): return False
    if not check_testpoint(M33_STL_TE158_EXP_VAL1, 35): return False
    if not check_testpoint(M33_STL_TE158_EXP_VAL1, 36): return False
    if not check_testpoint(M33_STL_TE158_EXP_VAL5, 37): return False
    if not check_testpoint(M33_STL_TE158_EXP_VAL2, 38): return False
    if not check_testpoint(M33_STL_TE158_EXP_VAL2, 39): return False
    if not check_testpoint(M33_STL_TE158_EXP_VAL6, 40): return False
    if not check_testpoint(M33_STL_TE158_EXP_VAL1, 41): return False
    if not check_testpoint(M33_STL_TE158_EXP_VAL7, 42): return False
    if not check_testpoint(M33_STL_TE158_EXP_VAL8, 43): return False
    if not check_testpoint(M33_STL_TE158_EXP_VAL6, 44): return False
    if not check_testpoint(M33_STL_TE158_EXP_VAL1, 45): return False
    if not check_testpoint(M33_STL_TE158_EXP_VAL10, 46): return False
    if not check_testpoint(M33_STL_TE158_EXP_VAL1, 47): return False
    if not check_testpoint(M33_STL_TE158_EXP_VAL6, 48): return False
    if not check_testpoint(M33_STL_TE158_EXP_VAL1, 49): return False
    if not check_testpoint(M33_STL_TE158_EXP_VAL10, 50): return False
    if not check_testpoint(M33_STL_TE158_EXP_VAL3, 51): return False
    if not check_testpoint(M33_STL_TE158_EXP_VAL5, 52): return False
    if not check_testpoint(M33_STL_TE158_EXP_VAL2, 53): return False

    # Start testing for TEST ELEMENT 160
    log_message("=    TEST ELEMENT 160:")
    if not check_testpoint(M33_STL_TE160_EXP_VAL7, 54): return False
    if not check_testpoint(M33_STL_TE160_EXP_VAL8, 55): return False
    if not check_testpoint(M33_STL_TE160_EXP_VAL9, 56): return False
    if not check_testpoint(M33_STL_TE160_EXP_VAL10, 57): return False
    if not check_testpoint(M33_STL_TE160_EXP_VAL11, 58): return False
    if not check_testpoint(M33_STL_TE160_EXP_VAL12, 59): return False
    if not check_testpoint(M33_STL_TE160_EXP_VAL1, 60): return False
    if not check_testpoint(M33_STL_TE160_EXP_VAL1, 61): return False
    if not check_testpoint(M33_STL_TE160_EXP_VAL2, 62): return False
    if not check_testpoint(M33_STL_TE160_EXP_VAL2, 63): return False
    if not check_testpoint(M33_STL_TE160_EXP_VAL13, 64): return False
    if not check_testpoint(M33_STL_TE160_EXP_VAL3, 65): return False
    if not check_testpoint(M33_STL_TE160_EXP_VAL3, 66): return False
    if not check_testpoint(M33_STL_TE160_EXP_VAL9, 67): return False
    if not check_testpoint(M33_STL_TE160_EXP_VAL4, 68): return False
    if not check_testpoint(M33_STL_TE160_EXP_VAL4, 69): return False
    if not check_testpoint(M33_STL_TE160_EXP_VAL11, 70): return False
    if not check_testpoint(M33_STL_TE160_EXP_VAL12, 71): return False

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

