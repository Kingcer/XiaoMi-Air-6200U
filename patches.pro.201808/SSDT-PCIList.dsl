/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-PCIList.aml, Fri Aug 24 09:49:35 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000005B2 (1458)
 *     Revision         0x02
 *     Checksum         0x16
 *     OEM ID           "hack"
 *     OEM Table ID     "PCIList"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "PCIList", 0x00000000)
{
    External (_SB_.PCI0.HDEF, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.I2C0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.I2C1, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.IGPU, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.IMEI, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.PPMC, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP01.PXSX, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP05.PXSX, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP09.PXSX, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.SBUS, DeviceObj)    // (from opcode)

    Method (_SB.PCI0.HDEF._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (LEqual (Arg2, Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                           
            })
        }

        Return (Package (0x06)
        {
            "AAPL,slot-name", 
            Buffer (0x0C)
            {
                "PCI-Express"
            }, 

            "hda-gfx", 
            Buffer (0x0A)
            {
                "onboard-1"
            }, 

            "model", 
            Buffer (0x20)
            {
                "Realtek ALC298 Audio Controller"
            }
        })
    }

    Method (_SB.PCI0.I2C0._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (LEqual (Arg2, Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                           
            })
        }

        Return (Package (0x06)
        {
            "AAPL,slot-name", 
            Buffer (0x0C)
            {
                "PCI-Express"
            }, 

            "device_type", 
            Buffer (0x04)
            {
                "I2C"
            }, 

            "model", 
            Buffer (0x2D)
            {
                "Sunrise Point-LP Serial IO I2C Controller #0"
            }
        })
    }

    Method (_SB.PCI0.I2C1._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (LEqual (Arg2, Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                           
            })
        }

        Return (Package (0x06)
        {
            "AAPL,slot-name", 
            Buffer (0x0C)
            {
                "PCI-Express"
            }, 

            "device_type", 
            Buffer (0x04)
            {
                "I2C"
            }, 

            "model", 
            Buffer (0x2D)
            {
                "Sunrise Point-LP Serial IO I2C Controller #1"
            }
        })
    }

    Method (_SB.PCI0.IGPU._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (LEqual (Arg2, Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                           
            })
        }

        Return (Package (0x04)
        {
            "AAPL,slot-name", 
            Buffer (0x0C)
            {
                "PCI-Express"
            }, 

            "hda-gfx", 
            Buffer (0x0A)
            {
                "onboard-1"
            }
        })
    }

    Method (_SB.PCI0.IMEI._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (LEqual (Arg2, Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                           
            })
        }

        Return (Package (0x06)
        {
            "AAPL,slot-name", 
            Buffer (0x0C)
            {
                "PCI-Express"
            }, 

            "device_type", 
            Buffer (0x05)
            {
                "IMEI"
            }, 

            "model", 
            Buffer (0x1E)
            {
                "Sunrise Point-LP CSME HECI #1"
            }
        })
    }

    Method (_SB.PCI0.RP01.PXSX._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (LEqual (Arg2, Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                           
            })
        }

        Return (Package (0x04)
        {
            "AAPL,slot-name", 
            Buffer (0x0C)
            {
                "PCI-Express"
            }, 

            "model", 
            Buffer (0x15)
            {
                "NVIDIA GeForce MX150"
            }
        })
    }

    Method (_SB.PCI0.RP05.PXSX._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (LEqual (Arg2, Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                           
            })
        }

        Return (Package (0x04)
        {
            "AAPL,slot-name", 
            Buffer (0x0A)
            {
                "M.2 key B"
            }, 

            "model", 
            Buffer (0x2A)
            {
                "Sunrise Point-LP PCI Express Root Port #5"
            }
        })
    }

    Method (_SB.PCI0.RP09.PXSX._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (LEqual (Arg2, Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                           
            })
        }

        Return (Package (0x04)
        {
            "AAPL,slot-name", 
            Buffer (0x0A)
            {
                "M.2 key M"
            }, 

            "model", 
            Buffer (0x1A)
            {
                "NVMe SSD Controller PM961"
            }
        })
    }

    Method (_SB.PCI0.PPMC._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (LEqual (Arg2, Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                           
            })
        }

        Return (Package (0x06)
        {
            "AAPL,slot-name", 
            Buffer (0x0C)
            {
                "PCI-Express"
            }, 

            "device_type", 
            Buffer (0x12)
            {
                "PCHPMC Controller"
            }, 

            "model", 
            Buffer (0x15)
            {
                "Sunrise Point-LP PMC"
            }
        })
    }

    Method (_SB.PCI0.SBUS._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (LEqual (Arg2, Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                           
            })
        }

        Return (Package (0x04)
        {
            "AAPL,slot-name", 
            Buffer (0x0C)
            {
                "PCI-Express"
            }, 

            "model", 
            Buffer (0x17)
            {
                "Sunrise Point-LP SMBus"
            }
        })
    }
}

