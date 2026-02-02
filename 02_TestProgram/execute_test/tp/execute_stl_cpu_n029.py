#----------------------------------------------------------------------------------------------
# function name : execute_stl_cpu_n029
# description   : Run tp name
# input         : tp's name
# output        : None
#----------------------------------------------------------------------------------------------
def execute_stl_cpu_n029(tp_name) :

    setup_debug(tp_name)

    # Start testing for CPU_N029
    log_message("=================================")
    log_message("= Test Case: STL_CPU_N029")

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

    # Start testing for TEST ELEMENT 163
    log_message("=    TEST ELEMENT 163:")
    if not check_testpoint(M33_STL_TE163_EXP_VAL2, 1): return False
    if not check_testpoint(M33_STL_TE163_EXP_VAL1, 2): return False
    if not check_testpoint(M33_STL_TE163_EXP_VAL2, 3): return False
    if not check_testpoint(M33_STL_TE163_EXP_VAL3, 4): return False
    if not check_testpoint(M33_STL_TE163_EXP_VAL4, 5): return False
    if not check_testpoint(M33_STL_TE163_EXP_VAL5, 6): return False
    if not check_testpoint(M33_STL_TE163_EXP_VAL4, 7): return False
    if not check_testpoint(M33_STL_TE163_EXP_VAL6, 8): return False

    # Start testing for TEST ELEMENT 164
    log_message("=    TEST ELEMENT 164:")
    if not check_testpoint(M33_STL_TE164_EXP_VAL1, 9): return False
    if not check_testpoint(M33_STL_TE164_EXP_VAL2, 10): return False
    if not check_testpoint(M33_STL_TE164_EXP_VAL3, 11): return False
    if not check_testpoint(M33_STL_TE164_EXP_VAL4, 12): return False

    # Start testing for TEST ELEMENT 165
    log_message("=    TEST ELEMENT 165:")
    if not check_testpoint(M33_STL_TE165_EXP_VAL1, 13): return False
    if not check_testpoint(M33_STL_TE165_EXP_VAL2, 14): return False
    if not check_testpoint(M33_STL_TE165_EXP_VAL3, 15): return False
    if not check_testpoint(M33_STL_TE165_EXP_VAL4, 16): return False

    # Start testing for TEST ELEMENT 166
    log_message("=    TEST ELEMENT 166:")
    if not check_testpoint(M33_STL_TE166_EXP_VAL1, 17): return False
    if not check_testpoint(M33_STL_TE166_EXP_VAL2, 18): return False
    if not check_testpoint(M33_STL_TE166_EXP_VAL4, 19): return False
    if not check_testpoint(M33_STL_TE166_EXP_VAL1, 20): return False
    if not check_testpoint(M33_STL_TE166_EXP_VAL3, 21): return False
    if not check_testpoint(M33_STL_TE166_EXP_VAL4, 22): return False

    # Start testing for TEST ELEMENT 167
    log_message("=    TEST ELEMENT 167:")
    if not check_testpoint(M33_STL_TE167_EXP_VAL2, 23): return False
    if not check_testpoint(M33_STL_TE167_EXP_VAL1, 24): return False
    if not check_testpoint(M33_STL_TE167_EXP_VAL4, 25): return False
    if not check_testpoint(M33_STL_TE167_EXP_VAL3, 26): return False
    if not check_testpoint(M33_STL_TE167_EXP_VAL2, 27): return False
    if not check_testpoint(M33_STL_TE167_EXP_VAL5, 28): return False
    if not check_testpoint(M33_STL_TE167_EXP_VAL2, 29): return False
    if not check_testpoint(M33_STL_TE167_EXP_VAL6, 30): return False

    # Start testing for TEST ELEMENT 168
    log_message("=    TEST ELEMENT 168:")
    if not check_testpoint(M33_STL_TE168_EXP_VAL2, 31): return False
    if not check_testpoint(M33_STL_TE168_EXP_VAL1, 32): return False
    if not check_testpoint(M33_STL_TE168_EXP_VAL4, 33): return False
    if not check_testpoint(M33_STL_TE168_EXP_VAL3, 34): return False
    if not check_testpoint(M33_STL_TE168_EXP_VAL2, 35): return False
    if not check_testpoint(M33_STL_TE168_EXP_VAL5, 36): return False
    if not check_testpoint(M33_STL_TE168_EXP_VAL2, 37): return False
    if not check_testpoint(M33_STL_TE168_EXP_VAL1, 38): return False

    # Start testing for TEST ELEMENT 169
    log_message("=    TEST ELEMENT 169:")
    if not check_testpoint(M33_STL_TE169_EXP_VAL2, 39): return False
    if not check_testpoint(M33_STL_TE169_EXP_VAL1, 40): return False
    if not check_testpoint(M33_STL_TE169_EXP_VAL2, 41): return False
    if not check_testpoint(M33_STL_TE169_EXP_VAL3, 42): return False
    if not check_testpoint(M33_STL_TE169_EXP_VAL4, 43): return False
    if not check_testpoint(M33_STL_TE169_EXP_VAL5, 44): return False
    if not check_testpoint(M33_STL_TE169_EXP_VAL4, 45): return False
    if not check_testpoint(M33_STL_TE169_EXP_VAL6, 46): return False

    # Start testing for TEST ELEMENT 170
    log_message("=    TEST ELEMENT 170:")
    if not check_testpoint(M33_STL_TE170_EXP_VAL1, 47): return False
    if not check_testpoint(M33_STL_TE170_EXP_VAL2, 48): return False
    if not check_testpoint(M33_STL_TE170_EXP_VAL3, 49): return False
    if not check_testpoint(M33_STL_TE170_EXP_VAL4, 50): return False

    # Start testing for TEST ELEMENT 171
    log_message("=    TEST ELEMENT 171:")
    if not check_testpoint(M33_STL_TE171_EXP_VAL1, 51): return False
    if not check_testpoint(M33_STL_TE171_EXP_VAL2, 52): return False
    if not check_testpoint(M33_STL_TE171_EXP_VAL3, 53): return False
    if not check_testpoint(M33_STL_TE171_EXP_VAL4, 54): return False

    # Start testing for TEST ELEMENT 200
    log_message("=    TEST ELEMENT 200:")
    if not check_testpoint(M33_STL_TE200_EXP_VAL1, 55): return False
    if not check_testpoint(M33_STL_TE200_EXP_VAL2, 56): return False
    if not check_testpoint(M33_STL_TE200_EXP_VAL1, 57): return False
    if not check_testpoint(M33_STL_TE200_EXP_VAL3, 58): return False
    if not check_testpoint(M33_STL_TE200_EXP_VAL1, 59): return False
    if not check_testpoint(M33_STL_TE200_EXP_VAL2, 60): return False
    if not check_testpoint(M33_STL_TE200_EXP_VAL4, 61): return False
    if not check_testpoint(M33_STL_TE200_EXP_VAL5, 62): return False

    # Start testing for TEST ELEMENT 201
    log_message("=    TEST ELEMENT 201:")
    if not check_testpoint(M33_STL_TE201_EXP_VAL1, 63): return False
    if not check_testpoint(M33_STL_TE201_EXP_VAL2, 64): return False
    if not check_testpoint(M33_STL_TE201_EXP_VAL3, 65): return False
    if not check_testpoint(M33_STL_TE201_EXP_VAL2, 66): return False
    if not check_testpoint(M33_STL_TE201_EXP_VAL4, 67): return False
    if not check_testpoint(M33_STL_TE201_EXP_VAL5, 68): return False

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
