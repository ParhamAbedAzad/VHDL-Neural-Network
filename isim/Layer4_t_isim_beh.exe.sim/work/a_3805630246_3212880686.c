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
static const char *ng0 = "C:/Users/FarazParham/Xilinx/Projects/NeuralNetwork/Neuron.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3805630246_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    int t12;

LAB0:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 1472U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4832);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(68, ng0);
    t3 = (t0 + 1672U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 3528U);
    t3 = *((char **)t1);
    t10 = *((int *)t3);
    t2 = (t10 == 0);
    if (t2 != 0)
        goto LAB8;

LAB10:    t1 = (t0 + 3528U);
    t3 = *((char **)t1);
    t10 = *((int *)t3);
    t2 = (t10 < 3);
    if (t2 != 0)
        goto LAB11;

LAB12:    t1 = (t0 + 3528U);
    t3 = *((char **)t1);
    t10 = *((int *)t3);
    t2 = (t10 == 3);
    if (t2 != 0)
        goto LAB13;

LAB14:
LAB9:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(69, ng0);
    t3 = (t0 + 3528U);
    t7 = *((char **)t3);
    t3 = (t7 + 0);
    *((int *)t3) = 0;
    xsi_set_current_line(70, ng0);
    t1 = (t0 + 4912);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(72, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t1 = (t0 + 4976);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t3, 32U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(73, ng0);
    t1 = (t0 + 5040);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = 3;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

LAB8:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 1352U);
    t4 = *((char **)t1);
    t1 = (t0 + 4976);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t4, 32U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(77, ng0);
    t1 = (t0 + 3528U);
    t3 = *((char **)t1);
    t10 = *((int *)t3);
    t1 = (t0 + 5040);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((int *)t9) = t10;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(78, ng0);
    t1 = (t0 + 3528U);
    t3 = *((char **)t1);
    t10 = *((int *)t3);
    t12 = (t10 + 1);
    t1 = (t0 + 3528U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t12;
    goto LAB9;

LAB11:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 2472U);
    t4 = *((char **)t1);
    t1 = (t0 + 4976);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t4, 32U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(81, ng0);
    t1 = (t0 + 3528U);
    t3 = *((char **)t1);
    t10 = *((int *)t3);
    t1 = (t0 + 5040);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((int *)t9) = t10;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(82, ng0);
    t1 = (t0 + 3528U);
    t3 = *((char **)t1);
    t10 = *((int *)t3);
    t12 = (t10 + 1);
    t1 = (t0 + 3528U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t12;
    goto LAB9;

LAB13:    xsi_set_current_line(84, ng0);
    t1 = (t0 + 4912);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(85, ng0);
    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t1 = (t0 + 5104);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t3, 32U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(87, ng0);
    t1 = (t0 + 3528U);
    t3 = *((char **)t1);
    t10 = *((int *)t3);
    t1 = (t0 + 5040);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((int *)t9) = t10;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(88, ng0);
    t1 = (t0 + 3528U);
    t3 = *((char **)t1);
    t10 = *((int *)t3);
    t12 = (t10 + 1);
    t1 = (t0 + 3528U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t12;
    goto LAB9;

}


extern void work_a_3805630246_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3805630246_3212880686_p_0};
	xsi_register_didat("work_a_3805630246_3212880686", "isim/Layer4_t_isim_beh.exe.sim/work/a_3805630246_3212880686.didat");
	xsi_register_executes(pe);
}
