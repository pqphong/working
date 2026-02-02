#----------------------------------------------------------------------------------------------
# function name : execute_stl_cpu_n020
# description   : Run tp name
# input         : tp's name
# output        : None
#----------------------------------------------------------------------------------------------
def execute_stl_cpu_n020(tp_name) :

    setup_debug(tp_name)

    # Start testing for CPU_N020
    log_message("=================================")
    log_message("= Test Case: STL_CPU_N020")

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

    # Start testing for TEST ELEMENT 128
    log_message("=    TEST ELEMENT 128:")
    if not check_testpoint(M33_STL_TE128_EXP_VAL1, 1): return False
    if not check_testpoint(M33_STL_TE128_EXP_VAL2, 2): return False
    if not check_testpoint(M33_STL_TE128_EXP_VAL3, 3): return False
    if not check_testpoint(M33_STL_TE128_EXP_VAL5, 4): return False
    if not check_testpoint(M33_STL_TE128_EXP_VAL6, 5): return False
    if not check_testpoint(M33_STL_TE128_EXP_VAL7, 6): return False
    if not check_testpoint(M33_STL_TE128_EXP_VAL8, 7): return False
    if not check_testpoint(M33_STL_TE128_EXP_VAL9, 8): return False
    if not check_testpoint(M33_STL_TE128_EXP_VAL10, 9): return False
    if not check_testpoint(M33_STL_TE128_EXP_VAL11, 10): return False
    if not check_testpoint(M33_STL_TE128_EXP_VAL9, 11): return False

    # Start testing for TEST ELEMENT 129
    log_message("=    TEST ELEMENT 129:")
    if not check_testpoint(M33_STL_TE129_EXP_VAL1, 12): return False
    if not check_testpoint(M33_STL_TE129_EXP_VAL2, 13): return False
    if not check_testpoint(M33_STL_TE129_EXP_VAL1, 14): return False
    if not check_testpoint(M33_STL_TE129_EXP_VAL3, 15): return False
    if not check_testpoint(M33_STL_TE129_EXP_VAL4, 16): return False
    
    # Start testing for TEST ELEMENT 130
    log_message("=    TEST ELEMENT 130:")
    if not check_testpoint(M33_STL_TE130_EXP_VAL1, 17): return False
    if not check_testpoint(M33_STL_TE130_EXP_VAL2, 18): return False
    if not check_testpoint(M33_STL_TE130_EXP_VAL3, 19): return False
    if not check_testpoint(M33_STL_TE130_EXP_VAL5, 20): return False
    if not check_testpoint(M33_STL_TE130_EXP_VAL7, 21): return False
    if not check_testpoint(M33_STL_TE130_EXP_VAL6, 22): return False
    if not check_testpoint(M33_STL_TE130_EXP_VAL4, 23): return False
    if not check_testpoint(M33_STL_TE130_EXP_VAL3, 24): return False
    if not check_testpoint(M33_STL_TE130_EXP_VAL9, 25): return False
    if not check_testpoint(M33_STL_TE130_EXP_VAL8, 26): return False

    # Start testing for TEST ELEMENT 185
    log_message("=    TEST ELEMENT 185:")
    if not check_testpoint(M33_STL_TE185_EXP_VAL1, 27): return False
    if not check_testpoint(M33_STL_TE185_EXP_VAL2, 28): return False
    if not check_testpoint(M33_STL_TE185_EXP_VAL3, 29): return False
    if not check_testpoint(M33_STL_TE185_EXP_VAL4, 30): return False
    if not check_testpoint(M33_STL_TE185_EXP_VAL5, 31): return False
    if not check_testpoint(M33_STL_TE185_EXP_VAL6, 32): return False
    if not check_testpoint(M33_STL_TE185_EXP_VAL7, 33): return False
    if not check_testpoint(M33_STL_TE185_EXP_VAL8, 34): return False
    if not check_testpoint(M33_STL_TE185_EXP_VAL9, 35): return False
    if not check_testpoint(M33_STL_TE185_EXP_VAL2, 36): return False
    if not check_testpoint(M33_STL_TE185_EXP_VAL10, 37): return False
    if not check_testpoint(M33_STL_TE185_EXP_VAL4, 38): return False
    if not check_testpoint(M33_STL_TE185_EXP_VAL11, 39): return False
    if not check_testpoint(M33_STL_TE185_EXP_VAL12, 40): return False
    if not check_testpoint(M33_STL_TE185_EXP_VAL5, 41): return False
    if not check_testpoint(M33_STL_TE185_EXP_VAL6, 42): return False
    if not check_testpoint(M33_STL_TE185_EXP_VAL13, 43): return False
    if not check_testpoint(M33_STL_TE185_EXP_VAL14, 44): return False

    # Start testing for TEST ELEMENT 203
    log_message("=    TEST ELEMENT 203:")
    if not check_testpoint(M33_STL_TE203_EXP_VAL1, 45): return False
    if not check_testpoint(M33_STL_TE203_EXP_VAL2, 46): return False
    if not check_testpoint(M33_STL_TE203_EXP_VAL3, 47): return False
    if not check_testpoint(M33_STL_TE203_EXP_VAL4, 48): return False
    if not check_testpoint(M33_STL_TE203_EXP_VAL5, 49): return False
    if not check_testpoint(M33_STL_TE203_EXP_VAL6, 50): return False
    if not check_testpoint(M33_STL_TE203_EXP_VAL7, 51): return False
    if not check_testpoint(M33_STL_TE203_EXP_VAL8, 52): return False

    # Start testing for TEST ELEMENT 204
    log_message("=    TEST ELEMENT 204:")
    if not check_testpoint(M33_STL_TE204_EXP_VAL1, 53): return False
    if not check_testpoint(M33_STL_TE204_EXP_VAL1, 54): return False
    if not check_testpoint(M33_STL_TE204_EXP_VAL2, 55): return False
    if not check_testpoint(M33_STL_TE204_EXP_VAL2, 56): return False
    if not check_testpoint(M33_STL_TE204_EXP_VAL3, 57): return False
    if not check_testpoint(M33_STL_TE204_EXP_VAL3, 58): return False
    if not check_testpoint(M33_STL_TE204_EXP_VAL4, 59): return False
    if not check_testpoint(M33_STL_TE204_EXP_VAL5, 60): return False
    if not check_testpoint(M33_STL_TE204_EXP_VAL5, 61): return False
    if not check_testpoint(M33_STL_TE204_EXP_VAL6, 62): return False
    if not check_testpoint(M33_STL_TE204_EXP_VAL7, 63): return False
    if not check_testpoint(M33_STL_TE204_EXP_VAL7, 64): return False
    if not check_testpoint(M33_STL_TE204_EXP_VAL8, 65): return False
    if not check_testpoint(M33_STL_TE204_EXP_VAL9, 66): return False
    if not check_testpoint(M33_STL_TE204_EXP_VAL9, 67): return False
    if not check_testpoint(M33_STL_TE204_EXP_VAL10, 68): return False
    if not check_testpoint(M33_STL_TE204_EXP_VAL11, 69): return False
    if not check_testpoint(M33_STL_TE204_EXP_VAL11, 70): return False
    if not check_testpoint(M33_STL_TE204_EXP_VAL10, 71): return False
    if not check_testpoint(M33_STL_TE204_EXP_VAL12, 72): return False
    if not check_testpoint(M33_STL_TE204_EXP_VAL12, 73): return False
    if not check_testpoint(M33_STL_TE204_EXP_VAL13, 74): return False
    if not check_testpoint(M33_STL_TE204_EXP_VAL13, 75): return False
    if not check_testpoint(M33_STL_TE204_EXP_VAL14, 76): return False
    if not check_testpoint(M33_STL_TE204_EXP_VAL14, 77): return False
    if not check_testpoint(M33_STL_TE204_EXP_VAL15, 78): return False
    if not check_testpoint(M33_STL_TE204_EXP_VAL15, 79): return False

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

