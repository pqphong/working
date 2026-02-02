#----------------------------------------------------------------------------------------------
# function name : execute_stl_cpu_n039
# description   : Run tp name
# input         : tp's name
# output        : None
#----------------------------------------------------------------------------------------------
def execute_stl_cpu_n039(tp_name) :

    setup_debug(tp_name)

    # Start testing for CPU_N039
    log_message("=================================")
    log_message("= Test Case: STL_CPU_N39")

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

    # Start testing for TEST ELEMENT 240
    log_message("=    TEST ELEMENT 240")
    if not check_testpoint(M33_STL_TE240_EXP_VAL1, 1): return False
    if not check_testpoint(M33_STL_TE240_EXP_VAL2, 2): return False
    if not check_testpoint(M33_STL_TE240_EXP_VAL3, 3): return False
    if not check_testpoint(M33_STL_TE240_EXP_VAL4, 4): return False
    if not check_testpoint(M33_STL_TE240_EXP_VAL5, 5): return False
    if not check_testpoint(M33_STL_TE240_EXP_VAL6, 6): return False
    if not check_testpoint(M33_STL_TE240_EXP_VAL7, 7): return False
    if not check_testpoint(M33_STL_TE240_EXP_VAL8, 8): return False
    if not check_testpoint(M33_STL_TE240_EXP_VAL9, 9): return False
    if not check_testpoint(M33_STL_TE240_EXP_VAL10, 10): return False
    if not check_testpoint(M33_STL_TE240_EXP_VAL11, 11): return False
    if not check_testpoint(M33_STL_TE240_EXP_VAL12, 12): return False
    if not check_testpoint(M33_STL_TE240_EXP_VAL13, 13): return False
    if not check_testpoint(M33_STL_TE240_EXP_VAL14, 14): return False
    if not check_testpoint(M33_STL_TE240_EXP_VAL15, 15): return False
    if not check_testpoint(M33_STL_TE240_EXP_VAL16, 16): return False
    if not check_testpoint(M33_STL_TE240_EXP_VAL17, 17): return False
    if not check_testpoint(M33_STL_TE240_EXP_VAL18, 18): return False
    if not check_testpoint(M33_STL_TE240_EXP_VAL19, 19): return False
    if not check_testpoint(M33_STL_TE240_EXP_VAL20, 20): return False
    if not check_testpoint(M33_STL_TE240_EXP_VAL21, 21): return False
    if not check_testpoint(M33_STL_TE240_EXP_VAL22, 22): return False
    if not check_testpoint(M33_STL_TE240_EXP_VAL23, 23): return False
    if not check_testpoint(M33_STL_TE240_EXP_VAL24, 24): return False
    if not check_testpoint(M33_STL_TE240_EXP_VAL25, 25): return False
    if not check_testpoint(M33_STL_TE240_EXP_VAL26, 26): return False
    if not check_testpoint(M33_STL_TE240_EXP_VAL27, 27): return False
    if not check_testpoint(M33_STL_TE240_EXP_VAL28, 28): return False
    if not check_testpoint(M33_STL_TE240_EXP_VAL29, 29): return False
    if not check_testpoint(M33_STL_TE240_EXP_VAL30, 30): return False
    if not check_testpoint(M33_STL_TE240_EXP_VAL31, 31): return False
    if not check_testpoint(M33_STL_TE240_EXP_VAL32, 32): return False
    if not check_testpoint(M33_STL_TE240_EXP_VAL33, 33): return False
    if not check_testpoint(M33_STL_TE240_EXP_VAL34, 34): return False
    if not check_testpoint(M33_STL_TE240_EXP_VAL35, 35): return False
    if not check_testpoint(M33_STL_TE240_EXP_VAL36, 36): return False
    if not check_testpoint(M33_STL_TE240_EXP_VAL37, 37): return False
    if not check_testpoint(M33_STL_TE240_EXP_VAL38, 38): return False
    if not check_testpoint(M33_STL_TE240_EXP_VAL39, 39): return False
    if not check_testpoint(M33_STL_TE240_EXP_VAL40, 40): return False

    # Start testing for TEST ELEMENT 246
    log_message("=    TEST ELEMENT 246")
    if not check_testpoint(M33_STL_TE246_EXP_VAL1, 41): return False
    if not check_testpoint(M33_STL_TE246_EXP_VAL2, 42): return False
    if not check_testpoint(M33_STL_TE246_EXP_VAL3, 43): return False
    if not check_testpoint(M33_STL_TE246_EXP_VAL4, 44): return False
    if not check_testpoint(M33_STL_TE246_EXP_VAL5, 45): return False
    if not check_testpoint(M33_STL_TE246_EXP_VAL6, 46): return False
    if not check_testpoint(M33_STL_TE246_EXP_VAL7, 47): return False
    if not check_testpoint(M33_STL_TE246_EXP_VAL8, 48): return False
    if not check_testpoint(M33_STL_TE246_EXP_VAL9, 49): return False
    if not check_testpoint(M33_STL_TE246_EXP_VAL10, 50): return False
    if not check_testpoint(M33_STL_TE246_EXP_VAL11, 51): return False
    if not check_testpoint(M33_STL_TE246_EXP_VAL12, 52): return False
    if not check_testpoint(M33_STL_TE246_EXP_VAL13, 53): return False
    if not check_testpoint(M33_STL_TE246_EXP_VAL14, 54): return False
    if not check_testpoint(M33_STL_TE246_EXP_VAL15, 55): return False
    if not check_testpoint(M33_STL_TE246_EXP_VAL16, 56): return False
    if not check_testpoint(M33_STL_TE246_EXP_VAL17, 57): return False
    if not check_testpoint(M33_STL_TE246_EXP_VAL18, 58): return False
    if not check_testpoint(M33_STL_TE246_EXP_VAL19, 59): return False
    if not check_testpoint(M33_STL_TE246_EXP_VAL20, 60): return False
    if not check_testpoint(M33_STL_TE246_EXP_VAL21, 61): return False
    if not check_testpoint(M33_STL_TE246_EXP_VAL22, 62): return False
    if not check_testpoint(M33_STL_TE246_EXP_VAL23, 63): return False
    if not check_testpoint(M33_STL_TE246_EXP_VAL24, 64): return False
    if not check_testpoint(M33_STL_TE246_EXP_VAL25, 65): return False
    if not check_testpoint(M33_STL_TE246_EXP_VAL26, 66): return False
    if not check_testpoint(M33_STL_TE246_EXP_VAL27, 67): return False
    if not check_testpoint(M33_STL_TE246_EXP_VAL28, 68): return False
    if not check_testpoint(M33_STL_TE246_EXP_VAL29, 69): return False
    if not check_testpoint(M33_STL_TE246_EXP_VAL30, 70): return False
    if not check_testpoint(M33_STL_TE246_EXP_VAL31, 71): return False
    if not check_testpoint(M33_STL_TE246_EXP_VAL32, 72): return False
    if not check_testpoint(M33_STL_TE246_EXP_VAL33, 73): return False
    if not check_testpoint(M33_STL_TE246_EXP_VAL34, 74): return False
    if not check_testpoint(M33_STL_TE246_EXP_VAL35, 75): return False
    if not check_testpoint(M33_STL_TE246_EXP_VAL36, 76): return False

    # Start testing for TEST ELEMENT 250
    log_message("=    TEST ELEMENT 250")
    if not check_testpoint(M33_STL_TE250_EXP_VAL1, 77): return False
    if not check_testpoint(M33_STL_TE250_EXP_VAL2, 78): return False
    if not check_testpoint(M33_STL_TE250_EXP_VAL3, 79): return False
    if not check_testpoint(M33_STL_TE250_EXP_VAL4, 80): return False
    if not check_testpoint(M33_STL_TE250_EXP_VAL5, 81): return False
    if not check_testpoint(M33_STL_TE250_EXP_VAL6, 82): return False
    if not check_testpoint(M33_STL_TE250_EXP_VAL7, 83): return False
    if not check_testpoint(M33_STL_TE250_EXP_VAL8, 84): return False
    if not check_testpoint(M33_STL_TE250_EXP_VAL9, 85): return False
    if not check_testpoint(M33_STL_TE250_EXP_VAL10, 86): return False
    if not check_testpoint(M33_STL_TE250_EXP_VAL11, 87): return False
    if not check_testpoint(M33_STL_TE250_EXP_VAL12, 88): return False
    if not check_testpoint(M33_STL_TE250_EXP_VAL13, 89): return False
    if not check_testpoint(M33_STL_TE250_EXP_VAL14, 90): return False
    if not check_testpoint(M33_STL_TE250_EXP_VAL15, 91): return False
    if not check_testpoint(M33_STL_TE250_EXP_VAL16, 92): return False
    if not check_testpoint(M33_STL_TE250_EXP_VAL17, 93): return False
    if not check_testpoint(M33_STL_TE250_EXP_VAL18, 94): return False
    if not check_testpoint(M33_STL_TE250_EXP_VAL19, 95): return False
    if not check_testpoint(M33_STL_TE250_EXP_VAL20, 96): return False
    if not check_testpoint(M33_STL_TE250_EXP_VAL21, 97): return False
    if not check_testpoint(M33_STL_TE250_EXP_VAL22, 98): return False
    if not check_testpoint(M33_STL_TE250_EXP_VAL23, 99): return False
    if not check_testpoint(M33_STL_TE250_EXP_VAL24, 100): return False
    if not check_testpoint(M33_STL_TE250_EXP_VAL25, 101): return False
    if not check_testpoint(M33_STL_TE250_EXP_VAL26, 102): return False
    if not check_testpoint(M33_STL_TE250_EXP_VAL27, 103): return False
    if not check_testpoint(M33_STL_TE250_EXP_VAL28, 104): return False
    if not check_testpoint(M33_STL_TE250_EXP_VAL29, 105): return False
    if not check_testpoint(M33_STL_TE250_EXP_VAL30, 106): return False
    if not check_testpoint(M33_STL_TE250_EXP_VAL31, 107): return False
    if not check_testpoint(M33_STL_TE250_EXP_VAL32, 108): return False
    if not check_testpoint(M33_STL_TE250_EXP_VAL33, 109): return False
    if not check_testpoint(M33_STL_TE250_EXP_VAL34, 110): return False
    if not check_testpoint(M33_STL_TE250_EXP_VAL35, 111): return False
    if not check_testpoint(M33_STL_TE250_EXP_VAL36, 112): return False

    # Start testing for TEST ELEMENT 261
    log_message("=    TEST ELEMENT 261")
    if not check_testpoint(M33_STL_TE261_EXP_VAL1, 113): return False
    if not check_testpoint(M33_STL_TE261_EXP_VAL2, 114): return False
    if not check_testpoint(M33_STL_TE261_EXP_VAL3, 115): return False
    if not check_testpoint(M33_STL_TE261_EXP_VAL4, 116): return False
    if not check_testpoint(M33_STL_TE261_EXP_VAL5, 117): return False
    if not check_testpoint(M33_STL_TE261_EXP_VAL6, 118): return False
    if not check_testpoint(M33_STL_TE261_EXP_VAL7, 119): return False
    if not check_testpoint(M33_STL_TE261_EXP_VAL8, 120): return False
    if not check_testpoint(M33_STL_TE261_EXP_VAL9, 121): return False
    if not check_testpoint(M33_STL_TE261_EXP_VAL10, 122): return False
    if not check_testpoint(M33_STL_TE261_EXP_VAL11, 123): return False
    if not check_testpoint(M33_STL_TE261_EXP_VAL12, 124): return False
    if not check_testpoint(M33_STL_TE261_EXP_VAL13, 125): return False
    if not check_testpoint(M33_STL_TE261_EXP_VAL14, 126): return False
    if not check_testpoint(M33_STL_TE261_EXP_VAL15, 127): return False
    if not check_testpoint(M33_STL_TE261_EXP_VAL16, 128): return False
    if not check_testpoint(M33_STL_TE261_EXP_VAL17, 129): return False
    if not check_testpoint(M33_STL_TE261_EXP_VAL18, 130): return False
    if not check_testpoint(M33_STL_TE261_EXP_VAL19, 131): return False
    if not check_testpoint(M33_STL_TE261_EXP_VAL20, 132): return False

    # Start testing for TEST ELEMENT 265
    log_message("=    TEST ELEMENT 265")
    if not check_testpoint(M33_STL_TE265_EXP_VAL1, 133): return False
    if not check_testpoint(M33_STL_TE265_EXP_VAL2, 134): return False
    if not check_testpoint(M33_STL_TE265_EXP_VAL3, 135): return False
    if not check_testpoint(M33_STL_TE265_EXP_VAL4, 136): return False
    if not check_testpoint(M33_STL_TE265_EXP_VAL5, 137): return False
    if not check_testpoint(M33_STL_TE265_EXP_VAL6, 138): return False
    if not check_testpoint(M33_STL_TE265_EXP_VAL7, 139): return False
    if not check_testpoint(M33_STL_TE265_EXP_VAL8, 140): return False
    if not check_testpoint(M33_STL_TE265_EXP_VAL9, 141): return False
    if not check_testpoint(M33_STL_TE265_EXP_VAL10, 142): return False
    if not check_testpoint(M33_STL_TE265_EXP_VAL11, 143): return False
    if not check_testpoint(M33_STL_TE265_EXP_VAL12, 144): return False
    if not check_testpoint(M33_STL_TE265_EXP_VAL13, 145): return False
    if not check_testpoint(M33_STL_TE265_EXP_VAL14, 146): return False
    if not check_testpoint(M33_STL_TE265_EXP_VAL15, 147): return False
    if not check_testpoint(M33_STL_TE265_EXP_VAL16, 148): return False
    if not check_testpoint(M33_STL_TE265_EXP_VAL17, 149): return False
    if not check_testpoint(M33_STL_TE265_EXP_VAL18, 150): return False
    if not check_testpoint(M33_STL_TE265_EXP_VAL19, 151): return False
    if not check_testpoint(M33_STL_TE265_EXP_VAL20, 152): return False
    if not check_testpoint(M33_STL_TE265_EXP_VAL21, 153): return False
    if not check_testpoint(M33_STL_TE265_EXP_VAL22, 154): return False
    if not check_testpoint(M33_STL_TE265_EXP_VAL23, 155): return False
    if not check_testpoint(M33_STL_TE265_EXP_VAL24, 156): return False
    if not check_testpoint(M33_STL_TE265_EXP_VAL25, 157): return False
    if not check_testpoint(M33_STL_TE265_EXP_VAL26, 158): return False
    if not check_testpoint(M33_STL_TE265_EXP_VAL27, 159): return False
    if not check_testpoint(M33_STL_TE265_EXP_VAL28, 160): return False
    if not check_testpoint(M33_STL_TE265_EXP_VAL29, 161): return False
    if not check_testpoint(M33_STL_TE265_EXP_VAL30, 162): return False
    if not check_testpoint(M33_STL_TE265_EXP_VAL31, 163): return False
    if not check_testpoint(M33_STL_TE265_EXP_VAL32, 164): return False
    if not check_testpoint(M33_STL_TE265_EXP_VAL33, 165): return False
    if not check_testpoint(M33_STL_TE265_EXP_VAL34, 166): return False
    if not check_testpoint(M33_STL_TE265_EXP_VAL35, 167): return False
    if not check_testpoint(M33_STL_TE265_EXP_VAL36, 168): return False

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
