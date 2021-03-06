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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000002948147618_2397809620_init();
    work_m_00000000003557706109_2123150820_init();
    work_m_00000000002863385951_0065856647_init();
    work_m_00000000000228003762_1124448613_init();
    work_m_00000000003856209270_2058220583_init();
    work_m_00000000003581216612_4231019343_init();
    work_m_00000000002993759919_4105119094_init();
    work_m_00000000001501954249_1524485058_init();
    work_m_00000000001501954249_1536135177_init();
    work_m_00000000003280228735_0612563988_init();
    work_m_00000000003280228735_2570611400_init();
    work_m_00000000002675874174_0886308060_init();
    work_m_00000000000577908729_0189517652_init();
    work_m_00000000002115951927_1250712576_init();
    work_m_00000000001719590234_2516657550_init();
    work_m_00000000001719590234_2991506483_init();
    work_m_00000000001436443402_3617476828_init();
    work_m_00000000001565663910_3807034151_init();
    work_m_00000000002367020434_2658706372_init();
    work_m_00000000003118474036_1608328332_init();
    work_m_00000000001929261097_2144801286_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000001929261097_2144801286");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
