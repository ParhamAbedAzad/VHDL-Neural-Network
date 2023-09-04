/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/FarazParham/Xilinx/Projects/NeuralNetwork/ActivationFunction2.vhd";
extern char *IEEE_P_2592010699;



static void work_a_3929103198_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t18;
    unsigned char t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;

LAB0:    xsi_set_current_line(11, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = (31 - 31);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t7 == (unsigned char)3);
    if (t8 != 0)
        goto LAB3;

LAB4:    t15 = (t0 + 1032U);
    t16 = *((char **)t15);
    t15 = (t0 + 4720);
    t18 = ((IEEE_P_2592010699) + 4024);
    t19 = xsi_vhdl_lessthan(t18, t16, 32U, t15, 32U);
    if (t19 != 0)
        goto LAB5;

LAB6:
LAB7:    t26 = (t0 + 4752);
    t28 = (t0 + 2872);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    memcpy(t32, t26, 32U);
    xsi_driver_first_trans_fast_port(t28);

LAB2:    t33 = (t0 + 2792);
    *((int *)t33) = 1;

LAB1:    return;
LAB3:    t9 = (t0 + 1488U);
    t10 = *((char **)t9);
    t9 = (t0 + 2872);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t10, 32U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB2;

LAB5:    t20 = (t0 + 1032U);
    t21 = *((char **)t20);
    t20 = (t0 + 2872);
    t22 = (t20 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t21, 32U);
    xsi_driver_first_trans_fast_port(t20);
    goto LAB2;

LAB8:    goto LAB2;

}


extern void work_a_3929103198_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3929103198_3212880686_p_0};
	xsi_register_didat("work_a_3929103198_3212880686", "isim/Layer1_t_isim_beh.exe.sim/work/a_3929103198_3212880686.didat");
	xsi_register_executes(pe);
}
