#----------------------------------------------------------------------------------------------
# function name : execute_stl_mpu_n000_6
# description   : Run tp name
# input         : tp's name
# output        : None
#----------------------------------------------------------------------------------------------
def execute_stl_mpu_n000_6(tp_name) :

    setup_debug(tp_name)

    # Start testing for MPU
    log_message("=================================")
    log_message("= Test Case: STL_MPU_N000 for Region 6")

    #self_dbw.RunCmd("route my_program_1 hardbrk execute main#31", True, True)
    #self_dbw.RunCmd("wait", True, True)
    #self_dbw.RunCmd("route my_program_1 hardbrk execute main#32", True, True)
    #self_dbw.RunCmd("wait", True, True)
    # Sets a breakpoint at the specified position to check if the operation result is equal to the expected value
    self_dbw.RunCmd("route my_program_1 hardbrk execute m33_stl_mpu_n000+0x6e", True, True)
    self_dbw.RunCmd("wait", True, True)
    self_dbw.RunCmd("route my_program_1 hardbrk execute m33_stl_mpu_n000+0x14e", True, True)
    self_dbw.RunCmd("wait", True, True)
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

    if not check_mpu_region_id("00000006"): return False
    if not check_testpoint(M33_STL_TE269_EXP_VAL1, 1): return False
    if not check_mpu_region_id("00000006"): return False
    if not check_testpoint(M33_STL_TE270_EXP_VAL1, 2): return False

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
