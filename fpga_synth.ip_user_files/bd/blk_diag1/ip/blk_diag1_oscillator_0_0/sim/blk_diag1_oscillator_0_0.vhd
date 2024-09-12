-- (c) Copyright 1995-2024 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:oscillator:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY blk_diag1_oscillator_0_0 IS
  PORT (
    clk : IN STD_LOGIC;
    rst_n : IN STD_LOGIC;
    note_on : IN STD_LOGIC;
    note_off : IN STD_LOGIC;
    note_number : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    velocity : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    waveform_sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    unison_voices : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    unison_detune : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    vca_env : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    vcf_env : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    mod_env : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    data_valid : OUT STD_LOGIC;
    data_ready : IN STD_LOGIC;
    osc_ready : OUT STD_LOGIC;
    osc_out : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    inv_out : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    vca_env_out : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    vcf_env_out : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    mod_env_out : OUT STD_LOGIC_VECTOR(23 DOWNTO 0)
  );
END blk_diag1_oscillator_0_0;

ARCHITECTURE blk_diag1_oscillator_0_0_arch OF blk_diag1_oscillator_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF blk_diag1_oscillator_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT oscillator IS
    GENERIC (
      DATA_WIDTH : INTEGER
    );
    PORT (
      clk : IN STD_LOGIC;
      rst_n : IN STD_LOGIC;
      note_on : IN STD_LOGIC;
      note_off : IN STD_LOGIC;
      note_number : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      velocity : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      waveform_sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      unison_voices : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      unison_detune : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      vca_env : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      vcf_env : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      mod_env : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      data_valid : OUT STD_LOGIC;
      data_ready : IN STD_LOGIC;
      osc_ready : OUT STD_LOGIC;
      osc_out : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
      inv_out : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
      vca_env_out : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
      vcf_env_out : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
      mod_env_out : OUT STD_LOGIC_VECTOR(23 DOWNTO 0)
    );
  END COMPONENT oscillator;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF blk_diag1_oscillator_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF rst_n: SIGNAL IS "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF rst_n: SIGNAL IS "xilinx.com:signal:reset:1.0 rst_n RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN blk_diag1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
BEGIN
  U0 : oscillator
    GENERIC MAP (
      DATA_WIDTH => 24
    )
    PORT MAP (
      clk => clk,
      rst_n => rst_n,
      note_on => note_on,
      note_off => note_off,
      note_number => note_number,
      velocity => velocity,
      waveform_sel => waveform_sel,
      unison_voices => unison_voices,
      unison_detune => unison_detune,
      vca_env => vca_env,
      vcf_env => vcf_env,
      mod_env => mod_env,
      data_valid => data_valid,
      data_ready => data_ready,
      osc_ready => osc_ready,
      osc_out => osc_out,
      inv_out => inv_out,
      vca_env_out => vca_env_out,
      vcf_env_out => vcf_env_out,
      mod_env_out => mod_env_out
    );
END blk_diag1_oscillator_0_0_arch;
