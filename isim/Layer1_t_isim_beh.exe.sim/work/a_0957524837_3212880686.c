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
static const char *ng0 = "C:/Users/FarazParham/Xilinx/Projects/NeuralNetwork/Selector.vhd";



static void work_a_0957524837_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned char t4;
    char *t5;
    char *t6;
    int t7;
    int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;

LAB0:    xsi_set_current_line(17, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t4 = (t3 < 1);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t17 = xsi_get_transient_memory(32U);
    memset(t17, 0, 32U);
    t18 = t17;
    memset(t18, (unsigned char)2, 32U);
    t19 = (t0 + 3616);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t17, 32U);
    xsi_driver_first_trans_fast_port(t19);

LAB2:    t24 = (t0 + 3520);
    *((int *)t24) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 1032U);
    t5 = *((char **)t1);
    t1 = (t0 + 1352U);
    t6 = *((char **)t1);
    t7 = *((int *)t6);
    t8 = (t7 - 0);
    t9 = (t8 * 1);
    xsi_vhdl_check_range_of_index(0, 0, 1, t7);
    t10 = (32U * t9);
    t11 = (0 + t10);
    t1 = (t5 + t11);
    t12 = (t0 + 3616);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t1, 32U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_0957524837_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned char t4;
    char *t5;
    char *t6;
    int t7;
    int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;

LAB0:    xsi_set_current_line(18, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t4 = (t3 < 1);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t17 = xsi_get_transient_memory(32U);
    memset(t17, 0, 32U);
    t18 = t17;
    memset(t18, (unsigned char)2, 32U);
    t19 = (t0 + 3680);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t17, 32U);
    xsi_driver_first_trans_fast_port(t19);

LAB2:    t24 = (t0 + 3536);
    *((int *)t24) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 1192U);
    t5 = *((char **)t1);
    t1 = (t0 + 1352U);
    t6 = *((char **)t1);
    t7 = *((int *)t6);
    t8 = (t7 - 0);
    t9 = (t8 * 1);
    xsi_vhdl_check_range_of_index(0, 0, 1, t7);
    t10 = (32U * t9);
    t11 = (0 + t10);
    t1 = (t5 + t11);
    t12 = (t0 + 3680);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t1, 32U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB2;

LAB6:    goto LAB2;

}


extern void work_a_0957524837_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0957524837_3212880686_p_0,(void *)work_a_0957524837_3212880686_p_1};
	xsi_register_didat("work_a_0957524837_3212880686", "isim/Layer1_t_isim_beh.exe.sim/work/a_0957524837_3212880686.didat");
	xsi_register_executes(pe);
}
