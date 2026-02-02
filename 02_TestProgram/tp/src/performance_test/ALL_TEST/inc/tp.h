/*******************************************************************************
* Project : R-Car U5L CST                                                      *
* Module  : CST_Sample.h                                                       *
* Version : 0.01                                                               *
* Date    : 21-Oct-2024                                                        *
********************************************************************************
*                                  COPYRIGHT                                   *
********************************************************************************
* Copyright (C) 2024 Renesas Electronics Corporation.                          *
********************************************************************************
* Purpose:                                                                     *
* definitions for diagnostic                                                   *
********************************************************************************
* Unless otherwise agreed upon in writing between your company and             *
* Renesas Electronics Corporation the following shall apply!                   *
*                                                                              *
* Warranty Disclaimer                                                          *
*                                                                              *
* There is no warranty of any kind whatsoever granted by Renesas. Any          *
* warranty is expressly disclaimed and excluded by Renesas, either expressed   *
* or implied, including but not limited to those for non-infringement of       *
* intellectual property, merchantability and/or fitness for the particular     *
* purpose.                                                                     *
*                                                                              *
* Limitation of Liability                                                      *
*                                                                              *
* In no event shall Renesas be liable to the User for any incidental,          *
* consequential, indirect, or punitive damage (including but not limited       *
* to lost profits) regardless of whether such liability is based on breach     *
* of contract, tort, strict liability, breach of warranties, failure of        *
* essential purpose or otherwise and even if advised of the possibility of     *
* such damages. Renesas shall not be liable for any services or products       *
* provided by third party vendors, developers or consultants identified or     *
* referred to the User by Renesas in connection with the Product(s) and/or     *
* the Application.                                                             *
*                                                                              *
********************************************************************************
* Environment:                                                                 *
* Devices : R-Car U5L                                                          *
* Language:  C language on GHS                                                 *
*******************************************************************************/
#ifndef CST_SAMPLE_H
#define CST_SAMPLE_H
/*******************************************************************************
**                               Include Section                              **
*******************************************************************************/
#include "CST_Typedefs.h"
/*******************************************************************************
**                       Global variables and functions                       **
*******************************************************************************/
extern uint32 sw_cst(uint16 i_bu2_part_start, uint16 i_bu2_part_num, 
                                                            uint8 l_bu2_tmode);
#endif  /* CST_SAMPLE_H */
/********************************************************************************
* End of File :                                                                 *
********************************************************************************/
