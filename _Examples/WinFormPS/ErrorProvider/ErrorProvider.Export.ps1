﻿#------------------------------------------------------------------------
# Source File Information (DO NOT MODIFY)
# Source ID: af67838a-3e6c-4b74-9b43-682d65243ced
# Source File: ErrorProvider.psf
#------------------------------------------------------------------------
#region File Recovery Data (DO NOT MODIFY)
<#RecoveryData:
+gsAAB+LCAAAAAAABAC9Vmtv2jAU/T5p/yHK5yghPEorhUg8ijSNrVVh3b5VTnJhHo6NbKcl/fVz
HtDQUJIiQEiIJD4+955zuI7zAD57Bh6PkESa+iEwoz29adq6+/WLpjl3HC8wRWSMCfxEIbi3nDN+
z9kzDoCbKzF3rNKaDOn9A19qMl5BT5/GQkJo/sY0YC/CHDMeZt+Gtu+RoT3mpbTNRvIxtGFEZMSh
RyGSHBFDu488gv3vEM/YEmjP63ZRx+9c2TetNjSub3SNqlJ6+lztN0Gvsdq/H4SY+izUNf8vJgFX
KH3IqOSMiKxdVbZqbQVcxjm8H0k29RGBEQ6BJiWppVeGZrcca7O0CvqDBaC7Y8VUiRkSDFRO8asC
NK/bhtZtV2ISxQaMKzumMiYJE15DMMKIsEUlOPFLd/eIVImcwVrqbhFl7oXdPquOcsyEoWAv21Py
xLHStRtgdYCmEslIDBA/e4pEyuQhbh8KT1mkCfORVBXoriLvNEvqfGTIG18NSCEuzToUM+R9owGs
FaZsl5XJXt+EJAcDtj67BVLxeGx9tAF2U/1r6zuwoautv91QzTUbn9K/vPvn9R9EUjJ6dvm9lGYG
Qh5tQCuZm3UEyhx4Y6ztQbejLChP5kMW1DIsHXU1K/kl4BGLCJF0Gg+QvxwywrjC8wj24YsDUs1/
f1ls/Sm9824yFjOye1Edl53z++ypgYRtlbPZHx2ySYoQpsDzOBXS9ABzUEnz4dBxbm2F2VF3V5q+
EBCqokFsVud3YjcUPuMEeydo3LG2u75nyaS+BMfJ7axmTN4fL0PE0Qumi2O4Gq15Z96d23bQaaAW
qub6E5KL9DRkHE5PtL3MIu9YxXd99z9KomvB+gsAAA==#>
#endregion

<#
    .NOTES
    --------------------------------------------------------------------------------
     Code generated by:  SAPIEN Technologies, Inc., PowerShell Studio 2016 v5.2.127
     Generated on:       2016-08-20 12:12 AM
     Generated by:       Francois-Xavier Cat
     Organization:       LazyWinAdmin.com
    --------------------------------------------------------------------------------
    .DESCRIPTION
        GUI script generated by PowerShell Studio 2016
#>
#----------------------------------------------
#region Application Functions
#----------------------------------------------

#endregion Application Functions

#----------------------------------------------
# Generated Form Function
#----------------------------------------------
function Call-ErrorProvider_psf {

	#----------------------------------------------
	#region Import the Assemblies
	#----------------------------------------------
	[void][reflection.assembly]::Load('System.Windows.Forms, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
	[void][reflection.assembly]::Load('System.Data, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
	[void][reflection.assembly]::Load('System.Drawing, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
	#endregion Import Assemblies

	#----------------------------------------------
	#region Generated Form Objects
	#----------------------------------------------
	[System.Windows.Forms.Application]::EnableVisualStyles()
	$formLazyWinAdmincom = New-Object 'System.Windows.Forms.Form'
	$statusbar1 = New-Object 'System.Windows.Forms.StatusBar'
	$textbox1 = New-Object 'System.Windows.Forms.TextBox'
	$buttonTest = New-Object 'System.Windows.Forms.Button'
	$errorprovider1 = New-Object 'System.Windows.Forms.ErrorProvider'
	$InitialFormWindowState = New-Object 'System.Windows.Forms.FormWindowState'
	#endregion Generated Form Objects

	#----------------------------------------------
	# User Generated Script
	#----------------------------------------------
	
	$formLazyWinAdmincom_Load={
		#TODO: Initialize Form Controls here
		
	}
	
	$buttonTest_Click={
			
		# If textbox is empty
		if (-not $textbox1.Text)
		{
			$errorprovider1.SetError($textbox1, 'Please enter something')
		}
		else
		{
			# Else Clear the error
			#$errorprovider1.SetError($textbox1,'')
			Clear-WFErrorProvider -ErrorProvider $errorprovider1 -Control $textbox1
			
			# SHow the text in Status message
			$statusbar1.Text = $textbox1.Text
		}
	}
	
	function Clear-WFErrorProvider
	{
	<#
	.SYNOPSIS
	    The Clear-WFErrorProvider function will clear the error message on the Winforms control specified
	
	.DESCRIPTION
	    The Clear-WFErrorProvider function will clear the error message on the Winforms control specified
	
	.PARAMETER ErrorProvider
	    Specifies the ErrorProvider Control
	
	.PARAMETER Control
	    Specifies the Control on which the error message will be cleared
	
	.EXAMPLE
	    PS C:\> Clear-WFErrorProvider -$ErrorProvider $ErrorProvider1 -Control $TextBox1
	
	    Clear the error message on the $TextBox1 control
	
	.NOTES
	    Francois-Xavier Cat
	    @lazywinadm
	    www.lazywinadmin.com
	    github.com/lazywinadmin
	#>
		
		PARAM (
			[parameter(Mandatory = $true)]
			[System.Windows.Forms.ErrorProvider]$ErrorProvider,
			[parameter(Mandatory = $true)]
			$Control
		)
		BEGIN
		{
			Add-Type -AssemblyName System.Windows.Forms
		}
		PROCESS
		{
			$ErrorProvider.SetError($Control, '')
		}
	}
	# --End User Generated Script--
	#----------------------------------------------
	#region Generated Events
	#----------------------------------------------
	
	$Form_StateCorrection_Load=
	{
		#Correct the initial state of the form to prevent the .Net maximized form issue
		$formLazyWinAdmincom.WindowState = $InitialFormWindowState
	}
	
	$Form_Cleanup_FormClosed=
	{
		#Remove all event handlers from the controls
		try
		{
			$buttonTest.remove_Click($buttonTest_Click)
			$formLazyWinAdmincom.remove_Load($formLazyWinAdmincom_Load)
			$formLazyWinAdmincom.remove_Load($Form_StateCorrection_Load)
			$formLazyWinAdmincom.remove_FormClosed($Form_Cleanup_FormClosed)
		}
		catch [Exception]
		{ }
	}
	#endregion Generated Events

	#----------------------------------------------
	#region Generated Form Code
	#----------------------------------------------
	$formLazyWinAdmincom.SuspendLayout()
	#
	# formLazyWinAdmincom
	#
	$formLazyWinAdmincom.Controls.Add($statusbar1)
	$formLazyWinAdmincom.Controls.Add($textbox1)
	$formLazyWinAdmincom.Controls.Add($buttonTest)
	$formLazyWinAdmincom.AutoScaleDimensions = '6, 13'
	$formLazyWinAdmincom.AutoScaleMode = 'Font'
	$formLazyWinAdmincom.ClientSize = '284, 74'
	$formLazyWinAdmincom.FormBorderStyle = 'FixedDialog'
	$formLazyWinAdmincom.Name = 'formLazyWinAdmincom'
	$formLazyWinAdmincom.Text = 'LazyWinAdmin.com'
	$formLazyWinAdmincom.add_Load($formLazyWinAdmincom_Load)
	#
	# statusbar1
	#
	$statusbar1.Location = '0, 52'
	$statusbar1.Name = 'statusbar1'
	$statusbar1.Size = '284, 22'
	$statusbar1.TabIndex = 2
	#
	# textbox1
	#
	$textbox1.Location = '12, 12'
	$textbox1.Name = 'textbox1'
	$textbox1.Size = '100, 20'
	$textbox1.TabIndex = 1
	#
	# buttonTest
	#
	$buttonTest.Location = '136, 10'
	$buttonTest.Name = 'buttonTest'
	$buttonTest.Size = '75, 23'
	$buttonTest.TabIndex = 0
	$buttonTest.Text = 'Test'
	$buttonTest.UseVisualStyleBackColor = $True
	$buttonTest.add_Click($buttonTest_Click)
	#
	# errorprovider1
	#
	$errorprovider1.ContainerControl = $formLazyWinAdmincom
	$formLazyWinAdmincom.ResumeLayout()
	#endregion Generated Form Code

	#----------------------------------------------

	#Save the initial state of the form
	$InitialFormWindowState = $formLazyWinAdmincom.WindowState
	#Init the OnLoad event to correct the initial state of the form
	$formLazyWinAdmincom.add_Load($Form_StateCorrection_Load)
	#Clean up the control events
	$formLazyWinAdmincom.add_FormClosed($Form_Cleanup_FormClosed)
	#Show the Form
	return $formLazyWinAdmincom.ShowDialog()

} #End Function

#Call the form
Call-ErrorProvider_psf | Out-Null
