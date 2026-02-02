#----------------------------------------------------------------------------------------------
# function name : execute_stl_cpu_n023
# description   : Run tp name
# input         : tp's name
# output        : None
#----------------------------------------------------------------------------------------------
def execute_stl_cpu_n023(tp_name) :

    setup_debug(tp_name)

    # Start testing for CPU_N023
    log_message("=================================")
    log_message("= Test Case: STL_CPU_N023")

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

    # Start testing for TEST ELEMENT 133
    log_message("=    TEST ELEMENT 133:")
    if not check_testpoint(M33_STL_TE133_EXP_VAL1, 1): return False
    if not check_testpoint(M33_STL_TE133_EXP_VAL3, 2): return False
    if not check_testpoint(M33_STL_TE133_EXP_VAL6, 3): return False
    if not check_testpoint(M33_STL_TE133_EXP_VAL3, 4): return False
    if not check_testpoint(M33_STL_TE133_EXP_VAL4, 5): return False
    if not check_testpoint(M33_STL_TE133_EXP_VAL5, 6): return False

    # Start testing for TEST ELEMENT 135
    log_message("=    TEST ELEMENT 135:")
    if not check_testpoint(M33_STL_TE135_EXP_VAL9, 7): return False
    if not check_testpoint(M33_STL_TE135_EXP_VAL1, 8): return False
    if not check_testpoint(M33_STL_TE135_EXP_VAL10, 9): return False
    if not check_testpoint(M33_STL_TE135_EXP_VAL2, 10): return False
    if not check_testpoint(M33_STL_TE135_EXP_VAL9, 11): return False
    if not check_testpoint(M33_STL_TE135_EXP_VAL3, 12): return False
    if not check_testpoint(M33_STL_TE135_EXP_VAL10, 13): return False
    if not check_testpoint(M33_STL_TE135_EXP_VAL4, 14): return False
    if not check_testpoint(M33_STL_TE135_EXP_VAL9, 15): return False
    if not check_testpoint(M33_STL_TE135_EXP_VAL5, 16): return False
    if not check_testpoint(M33_STL_TE135_EXP_VAL10, 17): return False
    if not check_testpoint(M33_STL_TE135_EXP_VAL6, 18): return False
    if not check_testpoint(M33_STL_TE135_EXP_VAL9, 19): return False
    if not check_testpoint(M33_STL_TE135_EXP_VAL7, 20): return False
    if not check_testpoint(M33_STL_TE135_EXP_VAL11, 21): return False
    if not check_testpoint(M33_STL_TE135_EXP_VAL8, 22): return False

    # Start testing for TEST ELEMENT 149
    log_message("=    TEST ELEMENT 149:")
    if not check_testpoint(M33_STL_TE149_EXP_VAL1, 23): return False
    if not check_testpoint(M33_STL_TE149_EXP_VAL3, 24): return False
    if not check_testpoint(M33_STL_TE149_EXP_VAL2, 25): return False
    
    # Start testing for TEST ELEMENT 150
    log_message("=    TEST ELEMENT 150:")
    if not check_testpoint(M33_STL_TE150_EXP_VAL1, 26): return False
    if not check_testpoint(M33_STL_TE150_EXP_VAL2, 27): return False
    if not check_testpoint(M33_STL_TE150_EXP_VAL3, 28): return False
    if not check_testpoint(M33_STL_TE150_EXP_VAL4, 29): return False

    # Start testing for TEST ELEMENT 151
    log_message("=    TEST ELEMENT 151:")
    if not check_testpoint(M33_STL_TE151_EXP_VAL8, 30): return False
    if not check_testpoint(M33_STL_TE151_EXP_VAL1, 31): return False
    if not check_testpoint(M33_STL_TE151_EXP_VAL12, 32): return False
    if not check_testpoint(M33_STL_TE151_EXP_VAL2, 33): return False
    if not check_testpoint(M33_STL_TE151_EXP_VAL9, 34): return False
    if not check_testpoint(M33_STL_TE151_EXP_VAL3, 35): return False
    if not check_testpoint(M33_STL_TE151_EXP_VAL10, 36): return False
    if not check_testpoint(M33_STL_TE151_EXP_VAL4, 37): return False
    if not check_testpoint(M33_STL_TE151_EXP_VAL9, 38): return False
    if not check_testpoint(M33_STL_TE151_EXP_VAL5, 39): return False
    if not check_testpoint(M33_STL_TE151_EXP_VAL10, 40): return False
    if not check_testpoint(M33_STL_TE151_EXP_VAL6, 41): return False
    if not check_testpoint(M33_STL_TE151_EXP_VAL9, 42): return False
    if not check_testpoint(M33_STL_TE151_EXP_VAL7, 43): return False
    if not check_testpoint(M33_STL_TE151_EXP_VAL11, 44): return False
    if not check_testpoint(M33_STL_TE151_EXP_VAL8, 45): return False

    # Start testing for TEST ELEMENT 152
    log_message("=    TEST ELEMENT 152:")
    if not check_testpoint(M33_STL_TE152_EXP_VAL1, 46): return False
    if not check_testpoint(M33_STL_TE152_EXP_VAL3, 47): return False
    if not check_testpoint(M33_STL_TE152_EXP_VAL2, 48): return False
    
    # Start testing for TEST ELEMENT 153
    log_message("=    TEST ELEMENT 153:")
    if not check_testpoint(M33_STL_TE153_EXP_VAL1, 49): return False
    if not check_testpoint(M33_STL_TE153_EXP_VAL2, 50): return False
    if not check_testpoint(M33_STL_TE153_EXP_VAL3, 51): return False
    if not check_testpoint(M33_STL_TE153_EXP_VAL3, 52): return False

    # Start testing for TEST ELEMENT 154
    log_message("=    TEST ELEMENT 154:")
    if not check_testpoint(M33_STL_TE154_EXP_VAL8, 53): return False
    if not check_testpoint(M33_STL_TE154_EXP_VAL1, 54): return False
    if not check_testpoint(M33_STL_TE154_EXP_VAL10, 55): return False
    if not check_testpoint(M33_STL_TE154_EXP_VAL2, 56): return False
    if not check_testpoint(M33_STL_TE154_EXP_VAL8, 57): return False
    if not check_testpoint(M33_STL_TE154_EXP_VAL3, 58): return False
    if not check_testpoint(M33_STL_TE154_EXP_VAL10, 59): return False
    if not check_testpoint(M33_STL_TE154_EXP_VAL4, 60): return False
    if not check_testpoint(M33_STL_TE154_EXP_VAL8, 61): return False
    if not check_testpoint(M33_STL_TE154_EXP_VAL5, 62): return False
    if not check_testpoint(M33_STL_TE154_EXP_VAL10, 63): return False
    if not check_testpoint(M33_STL_TE154_EXP_VAL6, 64): return False
    if not check_testpoint(M33_STL_TE154_EXP_VAL9, 65): return False
    if not check_testpoint(M33_STL_TE154_EXP_VAL7, 66): return False
    if not check_testpoint(M33_STL_TE154_EXP_VAL11, 67): return False
    if not check_testpoint(M33_STL_TE154_EXP_VAL8, 68): return False

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
