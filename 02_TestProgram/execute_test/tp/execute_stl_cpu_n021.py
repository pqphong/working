#----------------------------------------------------------------------------------------------
# function name : execute_stl_cpu_n021
# description   : Run tp name
# input         : tp's name
# output        : None
#----------------------------------------------------------------------------------------------
def execute_stl_cpu_n021(tp_name) :

    setup_debug(tp_name)

    # Start testing for CPU_N021
    log_message("=================================")
    log_message("= Test Case: STL_CPU_N021")

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

    # Start testing for TEST ELEMENT 131
    log_message("=    TEST ELEMENT 131:")
    if not check_testpoint(M33_STL_TE131_EXP_VAL12, 1): return False
    if not check_testpoint(M33_STL_TE131_EXP_VAL34, 2): return False

    # Start testing for TEST ELEMENT 144
    log_message("=    TEST ELEMENT 144:")
    if not check_testpoint(M33_STL_TE144_EXP_VAL1, 3): return False
    if not check_testpoint(M33_STL_TE144_EXP_VAL1, 4): return False
    if not check_testpoint(M33_STL_TE144_EXP_VAL2, 5): return False
    if not check_testpoint(M33_STL_TE144_EXP_VAL2, 6): return False
    if not check_testpoint(M33_STL_TE144_EXP_VAL1, 7): return False
    if not check_testpoint(M33_STL_TE144_EXP_VAL1, 8): return False
    if not check_testpoint(M33_STL_TE144_EXP_VAL2, 9): return False
    if not check_testpoint(M33_STL_TE144_EXP_VAL2, 10): return False
    if not check_testpoint(M33_STL_TE144_EXP_VAL2, 11): return False
    if not check_testpoint(M33_STL_TE144_EXP_VAL2, 12): return False
    if not check_testpoint(M33_STL_TE144_EXP_VAL1, 13): return False
    if not check_testpoint(M33_STL_TE144_EXP_VAL1, 14): return False
    if not check_testpoint(M33_STL_TE144_EXP_VAL2, 15): return False
    if not check_testpoint(M33_STL_TE144_EXP_VAL2, 16): return False
    if not check_testpoint(M33_STL_TE144_EXP_VAL1, 17): return False
    if not check_testpoint(M33_STL_TE144_EXP_VAL1, 18): return False

    # Start testing for TEST ELEMENT 145
    log_message("=    TEST ELEMENT 145:")
    if not check_testpoint(M33_STL_TE145_EXP_VAL12, 19): return False
    if not check_testpoint(M33_STL_TE145_EXP_VAL13, 20): return False
    if not check_testpoint(M33_STL_TE145_EXP_VAL14, 21): return False
    if not check_testpoint(M33_STL_TE145_EXP_VAL53, 22): return False
    if not check_testpoint(M33_STL_TE145_EXP_VAL64, 23): return False
    if not check_testpoint(M33_STL_TE145_EXP_VAL13, 24): return False
    if not check_testpoint(M33_STL_TE145_EXP_VAL73, 25): return False
    if not check_testpoint(M33_STL_TE145_EXP_VAL83, 26): return False

    # Start testing for TEST ELEMENT 146
    log_message("=    TEST ELEMENT 146:")
    if not check_testpoint(M33_STL_TE146_EXP_VAL12, 27): return False
    if not check_testpoint(M33_STL_TE146_EXP_VAL13, 28): return False
    if not check_testpoint(M33_STL_TE146_EXP_VAL14, 29): return False
    if not check_testpoint(M33_STL_TE146_EXP_VAL53, 30): return False
    if not check_testpoint(M33_STL_TE146_EXP_VAL64, 31): return False
    if not check_testpoint(M33_STL_TE146_EXP_VAL73, 32): return False
    if not check_testpoint(M33_STL_TE146_EXP_VAL83, 33): return False
    if not check_testpoint(M33_STL_TE146_EXP_VAL12, 34): return False

    # Start testing for TEST ELEMENT 147
    log_message("=    TEST ELEMENT 147:")
    if not check_testpoint(M33_STL_TE147_EXP_VAL12, 35): return False
    if not check_testpoint(M33_STL_TE147_EXP_VAL12, 36): return False
    if not check_testpoint(M33_STL_TE147_EXP_VAL12, 37): return False
    if not check_testpoint(M33_STL_TE147_EXP_VAL32, 38): return False
    if not check_testpoint(M33_STL_TE147_EXP_VAL32, 39): return False
    if not check_testpoint(M33_STL_TE147_EXP_VAL44, 40): return False
    if not check_testpoint(M33_STL_TE147_EXP_VAL12, 41): return False
    if not check_testpoint(M33_STL_TE147_EXP_VAL42, 42): return False
    if not check_testpoint(M33_STL_TE147_EXP_VAL42, 43): return False
    if not check_testpoint(M33_STL_TE147_EXP_VAL45, 44): return False

    # Start testing for TEST ELEMENT 148
    log_message("=    TEST ELEMENT 148:")
    if not check_testpoint(M33_STL_TE148_EXP_VAL1, 45): return False
    if not check_testpoint(M33_STL_TE148_EXP_VAL2, 46): return False
    if not check_testpoint(M33_STL_TE148_EXP_VAL3, 47): return False
    if not check_testpoint(M33_STL_TE148_EXP_VAL4, 48): return False
    if not check_testpoint(M33_STL_TE148_EXP_VAL5, 49): return False
    if not check_testpoint(M33_STL_TE148_EXP_VAL6, 50): return False

    # Start testing for TEST ELEMENT 239
    log_message("=    TEST ELEMENT 239:")
    if not check_testpoint(M33_STL_TE239_EXP_VAL41, 51): return False
    if not check_testpoint(M33_STL_TE239_EXP_VAL32, 52): return False
    if not check_testpoint(M33_STL_TE239_EXP_VAL32, 53): return False
    if not check_testpoint(M33_STL_TE239_EXP_VAL43, 54): return False
    if not check_testpoint(M33_STL_TE239_EXP_VAL43, 55): return False

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

