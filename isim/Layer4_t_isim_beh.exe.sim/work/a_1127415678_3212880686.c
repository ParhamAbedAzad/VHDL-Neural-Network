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
static const char *ng0 = "C:/Users/FarazParham/Xilinx/Projects/NeuralNetwork/Layer4.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1605435078_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1127415678_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(36, ng0);

LAB3:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1192U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t3, t5);
    t1 = (t0 + 5016);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t6;
    xsi_driver_first_trans_fast(t1);

LAB2:    t11 = (t0 + 4920);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1127415678_3212880686_p_1(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    int t8;
    char *t9;
    int t10;
    int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1312U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4936);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(47, ng0);
    t3 = (t0 + 1672U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:
LAB6:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 3368U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB8;

LAB10:
LAB9:    goto LAB3;

LAB5:    xsi_set_current_line(48, ng0);
    t3 = (t0 + 3368U);
    t7 = *((char **)t3);
    t3 = (t7 + 0);
    *((unsigned char *)t3) = (unsigned char)3;
    goto LAB6;

LAB8:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 3248U);
    t4 = *((char **)t1);
    t8 = *((int *)t4);
    t6 = (t8 < 1);
    if (t6 != 0)
        goto LAB11;

LAB13:
LAB12:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 3128U);
    t3 = *((char **)t1);
    t8 = *((int *)t3);
    t2 = (t8 == 0);
    if (t2 != 0)
        goto LAB14;

LAB16:
LAB15:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 3008U);
    t3 = *((char **)t1);
    t8 = *((int *)t3);
    t10 = (t8 + 1);
    t1 = (t0 + 3008U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t10;
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 3128U);
    t3 = *((char **)t1);
    t8 = *((int *)t3);
    t2 = (t8 == 1);
    if (t2 != 0)
        goto LAB17;

LAB19:
LAB18:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 3008U);
    t3 = *((char **)t1);
    t8 = *((int *)t3);
    t2 = (t8 == 3);
    if (t2 != 0)
        goto LAB20;

LAB22:
LAB21:    goto LAB9;

LAB11:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1832U);
    t7 = *((char **)t1);
    t1 = (t0 + 3248U);
    t9 = *((char **)t1);
    t10 = *((int *)t9);
    t11 = (t10 - 0);
    t12 = (t11 * 1);
    t13 = (32U * t12);
    t14 = (0U + t13);
    t1 = (t0 + 5080);
    t15 = (t1 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t7, 32U);
    xsi_driver_first_trans_delta(t1, t14, 32U, 0LL);
    xsi_set_current_line(54, ng0);
    t1 = (t0 + 3248U);
    t3 = *((char **)t1);
    t8 = *((int *)t3);
    t10 = (t8 + 1);
    t1 = (t0 + 3248U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t10;
    goto LAB12;

LAB14:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 1832U);
    t4 = *((char **)t1);
    t1 = (t0 + 3008U);
    t7 = *((char **)t1);
    t10 = *((int *)t7);
    t11 = (t10 - 0);
    t12 = (t11 * 1);
    t13 = (32U * t12);
    t14 = (0U + t13);
    t1 = (t0 + 5144);
    t9 = (t1 + 56U);
    t15 = *((char **)t9);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t4, 32U);
    xsi_driver_first_trans_delta(t1, t14, 32U, 0LL);
    goto LAB15;

LAB17:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 3128U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 3008U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 3248U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 3368U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((unsigned char *)t1) = (unsigned char)2;
    goto LAB18;

LAB20:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 3128U);
    t4 = *((char **)t1);
    t10 = *((int *)t4);
    t11 = (t10 + 1);
    t1 = (t0 + 3128U);
    t7 = *((char **)t1);
    t1 = (t7 + 0);
    *((int *)t1) = t11;
    xsi_set_current_line(71, ng0);
    t1 = (t0 + 3008U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((int *)t1) = 0;
    goto LAB21;

}


extern void work_a_1127415678_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1127415678_3212880686_p_0,(void *)work_a_1127415678_3212880686_p_1};
	xsi_register_didat("work_a_1127415678_3212880686", "isim/Layer4_t_isim_beh.exe.sim/work/a_1127415678_3212880686.didat");
	xsi_register_executes(pe);
}
