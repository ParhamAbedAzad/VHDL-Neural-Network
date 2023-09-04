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
static const char *ng0 = "C:/Users/FarazParham/Xilinx/Projects/NeuralNetwork/Multiplier.vhd";
extern char *IEEE_P_0774719531;

char *ieee_p_0774719531_sub_767632659_2162500114(char *, char *, char *, char *, char *, char *);


static void work_a_0045908465_3212880686_p_0(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(15, ng0);

LAB3:    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 5636U);
    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t4 = (t0 + 5652U);
    t6 = ieee_p_0774719531_sub_767632659_2162500114(IEEE_P_0774719531, t1, t3, t2, t5, t4);
    t7 = (t1 + 12U);
    t8 = *((unsigned int *)t7);
    t9 = (1U * t8);
    t10 = (64U != t9);
    if (t10 == 1)
        goto LAB5;

LAB6:    t11 = (t0 + 3576);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 64U);
    xsi_driver_first_trans_fast(t11);

LAB2:    t16 = (t0 + 3480);
    *((int *)t16) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(64U, t9, 0);
    goto LAB6;

}

static void work_a_0045908465_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(16, ng0);

LAB3:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = (32 + 16);
    t4 = (t3 - 1);
    t5 = (63 - t4);
    t6 = (t5 * 1U);
    t7 = (0 + t6);
    t1 = (t2 + t7);
    t8 = (t0 + 3640);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 32U);
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 3496);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0045908465_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0045908465_3212880686_p_0,(void *)work_a_0045908465_3212880686_p_1};
	xsi_register_didat("work_a_0045908465_3212880686", "isim/Layer4_t_isim_beh.exe.sim/work/a_0045908465_3212880686.didat");
	xsi_register_executes(pe);
}
