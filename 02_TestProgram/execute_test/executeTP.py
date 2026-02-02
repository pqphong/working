# -*- encoding: utf-8 -*-
registers_before = {}
registers_after = {}
def log_message(message):
    with open(LOGFILE, mode='a') as f:
        f.write(message + "\n")

def check_testpoint(expected_value, testpoint_number):
    count = 0
    while count < 1000:
        if self_dbw.IsRunning() == True:
            count += 1
        if self_dbw.IsHalted() == True:
            self_dbw.RunCmd("print ($r11)", True, True)
            operationvalue = self_dbw.cmdExecOutput
            if operationvalue == expected_value:
                log_message("=        testpoint " + str(testpoint_number) + ": OK")
                self_dbw.RunCmd("c", True, True)
                self_dbw.RunCmd("wait", True, True)
                return True
            else:
                log_message("=        testpoint " + str(testpoint_number) + ": NOT OK: " + str(operationvalue))
                log_message("= Test Case Result: FAILED")
                log_message("=================================")
                end_debug_tp()
                return False
        if count >= 1000:
            self_dbw.Stop()
            log_message("= Test Case Result: FAILED")
            log_message("=================================")
            break
    return None

def check_mpu_region_id(expected_region_id):
    count = 0
    while count < 1000:
        if self_dbw.IsRunning() == True:
            count += 1
        if self_dbw.IsHalted() == True:
            self_dbw.RunCmd("target m -d4 0xE000ED98", True, True)
            actual_region_id = self_dbw.cmdExecOutput
            if actual_region_id == expected_region_id:
                log_message("=        Region ID was updated correctly as MPU_Region parameter")
                self_dbw.RunCmd("c", True, True)
                self_dbw.RunCmd("wait", True, True)
                return True
            else:
                log_message("=        The region ID (MPU_RNR register) was not updated " + str(actual_region_id))
                log_message("= Test Case Result: FAILED")
                log_message("=================================")
                end_debug_tp()
                return False
        if count >= 1000:
            self_dbw.Stop()
            log_message("= Test Case Result: FAILED")
            log_message("=================================")
            break
    return None

def check_status():
    count = 0
    while count < 100:
        self_dbw.RunCmd("wait -time 1000", True, True)
        print "count :", count, " status:", self_dbw.GetStatus()
        if self_dbw.IsRunning() == True:
            count += 1
        if self_dbw.IsHalted() == True:
            log_message("= Test Case Result: PASSED")
            log_message("=================================")
            break
        if count >= 100:
            self_dbw.Stop()
            log_message("= Test Case Result: FAILED")
            log_message("=================================")
            break
    return None

def setup_debug(tp_name):
    # Declaring externally defined variables
    global TPNAME
    
    # Get tp's name.
    TPNAME = tp_name

    # Send the reset command directly to the target debug server.
    self_dbw.RunCmd("target rst", True, True)
    self_dbw.RunCmd("wait", True, True)

    # Add the program tp_name to the target list and load the program in the debugger window.
    self_dbw.RunCmd("new -alias my_program_1 -bind debugger.pid.1 " + tp_name, True, True)
    self_dbw.RunCmd("route debugger.pid.1 halt", True, True)

    # Sends the specified command to the specified destination component.
    self_dbw.RunCmd("route my_program_1 prepare_target -load", True, True)
    self_dbw.RunCmd("wait -time 1000", True, True)

    # Send the reset command directly to the target debug server.
    self_dbw.RunCmd("target rst", True, True)

def end_debug_tp():
    # Stops the current process.
    self_dbw.RunCmd("route my_program_1 halt", True, True)
    self_dbw.RunCmd("wait -time 1000",True, True)

    # Reset the target.
    self_dbw.RunCmd("route my_program_1 reset",True, True)
 
    # All breakpoints will be removed before detaching.

    self_dbw.RunCmd("route my_program_1 detach -norun",True, True)
    self_dbw.RunCmd("wait -time 1000",True, True)

def recordregbefore():
    # Get the value of general registers
    log_message("= Checking the value of register BEFORE")
    for reg in ['r4', 'r5', 'r6', 'r7', 'xpsr', 'control']:
        self_dbw.RunCmd("target reg {}".format(reg), True, True)
        registers_before[reg] = self_dbw.cmdExecOutput
        log_message("=  " + str(registers_before[reg]))

def checkregafter():
    status = True
    # Get the value of general registers
    log_message("=  Checking the value of register AFTER")
    for reg in ['r4', 'r5', 'r6', 'r7', 'xpsr', 'control']:
        self_dbw.RunCmd("target reg {}".format(reg), True, True)
        registers_after[reg] = self_dbw.cmdExecOutput
        log_message("=  " + str(registers_after[reg]))
    log_message("=  Comparing register values BEFORE and AFTER")
    
    for reg in ['r4', 'r5', 'r6', 'r7', 'xpsr', 'control']:
        if registers_before.get(reg) != registers_after.get(reg):
            log_message("=  Mismatch in " + str(reg) + ": BEFORE: " + str(registers_before.get(reg)) + ", AFTER: " + str(registers_after.get(reg)))
            end_debug_tp()
            status = False
    return status

execfile("tp/execute_stl_cpu_n000.py")
execfile("tp/execute_stl_cpu_n001.py")
execfile("tp/execute_stl_cpu_n002.py")
execfile("tp/execute_stl_cpu_n003.py")
execfile("tp/execute_stl_cpu_n004.py")
execfile("tp/execute_stl_cpu_n005.py")
execfile("tp/execute_stl_cpu_n006.py")
execfile("tp/execute_stl_cpu_n007.py")
execfile("tp/execute_stl_cpu_n008.py")
execfile("tp/execute_stl_cpu_n009.py")
execfile("tp/execute_stl_cpu_n010.py")
execfile("tp/execute_stl_cpu_n011.py")
execfile("tp/execute_stl_cpu_n012.py")
execfile("tp/execute_stl_cpu_n013.py")
execfile("tp/execute_stl_cpu_n014.py")
execfile("tp/execute_stl_cpu_n015.py")
execfile("tp/execute_stl_cpu_n016.py")
execfile("tp/execute_stl_cpu_n017.py")
execfile("tp/execute_stl_cpu_n018.py")
execfile("tp/execute_stl_cpu_n019.py")
execfile("tp/execute_stl_cpu_n020.py")
execfile("tp/execute_stl_cpu_n021.py")
execfile("tp/execute_stl_cpu_n022.py")
execfile("tp/execute_stl_cpu_n023.py")
execfile("tp/execute_stl_cpu_n024.py")
execfile("tp/execute_stl_cpu_n025.py")
execfile("tp/execute_stl_cpu_n026.py")
execfile("tp/execute_stl_cpu_n027.py")
execfile("tp/execute_stl_cpu_n028.py")
execfile("tp/execute_stl_cpu_n029.py")
execfile("tp/execute_stl_cpu_n030.py")
execfile("tp/execute_stl_cpu_n031.py")
execfile("tp/execute_stl_cpu_n032.py")
execfile("tp/execute_stl_cpu_n033.py")
execfile("tp/execute_stl_cpu_n034.py")
execfile("tp/execute_stl_cpu_n035.py")
execfile("tp/execute_stl_cpu_n036.py")
execfile("tp/execute_stl_cpu_n037.py")
execfile("tp/execute_stl_cpu_n038.py")
execfile("tp/execute_stl_cpu_n039.py")
execfile("tp/execute_stl_cpu_n040.py")
execfile("tp/execute_stl_cpu_n041.py")
execfile("tp/execute_stl_cpu_n042.py")
execfile("tp/execute_stl_cpu_n043.py")
execfile("tp/execute_stl_cpu_n044.py")
execfile("tp/execute_stl_cpu_n045.py")
execfile("tp/execute_stl_cpu_n046.py")
execfile("tp/execute_stl_cpu_n047.py")
execfile("tp/execute_stl_cpu_n048.py")
execfile("tp/execute_stl_cpu_n049.py")
execfile("tp/execute_stl_cpu_n050.py")
execfile("tp/execute_stl_cpu_n051.py")
execfile("tp/execute_stl_cpu_n052.py")
execfile("tp/execute_stl_cpu_n053.py")
execfile("tp/execute_stl_cpu_n054.py")
execfile("tp/execute_stl_cpu_n055.py")
execfile("tp/execute_stl_cpu_n056.py")
execfile("tp/execute_stl_cpu_n057.py")
execfile("tp/execute_stl_cpu_n058.py")
execfile("tp/execute_stl_cpu_n059.py")
execfile("tp/execute_stl_cpu_n060.py")
execfile("tp/execute_stl_cpu_n061.py")
execfile("tp/execute_stl_cpu_n062.py")
execfile("tp/execute_stl_cpu_n063.py")
execfile("tp/execute_stl_mpu_n000_0.py")
execfile("tp/execute_stl_mpu_n000_1.py")
execfile("tp/execute_stl_mpu_n000_2.py")
execfile("tp/execute_stl_mpu_n000_3.py")
execfile("tp/execute_stl_mpu_n000_4.py")
execfile("tp/execute_stl_mpu_n000_5.py")
execfile("tp/execute_stl_mpu_n000_6.py")
execfile("tp/execute_stl_mpu_n000_7.py")
execfile("tp/execute_stl_mpu_n001.py")
execfile("tp/execute_stl_mpu_n002.py")
execfile("tp/execute_stl_nvic_n000.py")
#----------------------------------------------------------------------------------------------
#                        E            O            F
#----------------------------------------------------------------------------------------------
