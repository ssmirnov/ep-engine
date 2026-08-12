

; General
TBBLUE_REGISTER_SELECT          equ #243b       ; https://wiki.specnext.dev/TBBlue_Register_Select
TBBLUE_REGISTER_ACCESS          equ #253b       ; https://wiki.specnext.dev/TBBlue_Register_Access

; CPU
CPU_SPEED                       equ #07         ; https://wiki.specnext.dev/CPU_Speed_Register

; Memory
MEMORY_PAGING_CONTROL           equ #7ffd       ; https://wiki.specnext.dev/Memory_Paging_Control
NEXT_MEMORY_BANK_SELECT         equ #dffd       ; https://wiki.specnext.dev/Next_Memory_Bank_Select

MEMORY_MANAGEMENT_SLOT_0_BANK   equ #50         ; https://wiki.specnext.dev/Memory_management_slot_0_bank
MEMORY_MANAGEMENT_SLOT_1_BANK   equ #51         ; https://wiki.specnext.dev/Memory_management_slot_1_bank
MEMORY_MANAGEMENT_SLOT_2_BANK   equ #52         ; https://wiki.specnext.dev/Memory_management_slot_2_bank
MEMORY_MANAGEMENT_SLOT_3_BANK   equ #53         ; https://wiki.specnext.dev/Memory_management_slot_3_bank
MEMORY_MANAGEMENT_SLOT_4_BANK   equ #54         ; https://wiki.specnext.dev/Memory_management_slot_4_bank
MEMORY_MANAGEMENT_SLOT_5_BANK   equ #55         ; https://wiki.specnext.dev/Memory_management_slot_5_bank
MEMORY_MANAGEMENT_SLOT_6_BANK   equ #56         ; https://wiki.specnext.dev/Memory_management_slot_6_bank
MEMORY_MANAGEMENT_SLOT_7_BANK   equ #57         ; https://wiki.specnext.dev/Memory_management_slot_7_bank

; ULA
ULA_CONTROL                     equ #68         ; https://wiki.specnext.dev/ULA_Control_Register
ENHANCED_ULA_CONTROL            equ #43         ; https://wiki.specnext.dev/Enhanced_ULA_Control_Register

; Tilemap
TILEMAP_CONTROL                 equ #6b         ; https://wiki.specnext.dev/Tilemap_Control_Register
DEFAULT_TILEMAP_ATTRIBUTE       equ #6c         ; https://wiki.specnext.dev/Default_Tilemap_Attribute_Register
TILEMAP_BASE_ADDRESS            equ #6e         ; https://wiki.specnext.dev/Tilemap_Base_Address_Register
TILE_DEFINITIONS_BASE_ADDRESS   equ #6f         ; https://wiki.specnext.dev/Tile_Definitions_Base_Address_Register
TILEMAP_OFFSET_X_MSB            equ #2f         ; https://wiki.specnext.dev/Tilemap_Offset_X_MSB_Register
TILEMAP_OFFSET_X_LSB            equ #30         ; https://wiki.specnext.dev/Tilemap_Offset_X_LSB_Register
TILEMAP_OFFSET_Y                equ #31         ; https://wiki.specnext.dev/Tilemap_Offset_Y_Register
TILEMAP_TRANSPARENCY_INDEX      equ #4c         ; https://wiki.specnext.dev/Tilemap_Transparency_Index_Register

; Clipping
CLIP_WINDOW_CONTROL             equ #1c         ; https://wiki.specnext.dev/Clip_Window_Control_Register
CLIP_WINDOW_TILEMAP             equ #1b         ; https://wiki.specnext.dev/Clip_Window_Tilemap_Register
CLIP_WINDOW_ULA_LORES           equ #1a         ; https://wiki.specnext.dev/Clip_Window_ULA/LoRes_Register
CLIP_WINDOW_SPRITES             equ #19         ; https://wiki.specnext.dev/Clip_Window_Sprites_Register
CLIP_WINDOW_LAYER_2             equ #18         ; https://wiki.specnext.dev/Clip_Window_Layer_2_Register

; Palettes
PALETTE_INDEX                   equ #40         ; https://wiki.specnext.dev/Palette_Index_Register
PALETTE_VALUE                   equ #41         ; https://wiki.specnext.dev/Palette_Value_Register
ENHANCED_ULA_PALETTE_EXTENSION  equ #44         ; https://wiki.specnext.dev/Enhanced_ULA_Palette_Extension

; Sprites
SPRITE_AND_LAYERS_SYSTEM        equ #15         ; https://wiki.specnext.dev/Sprite_and_Layers_System_Register
SPRITE_STATUS_SLOT_SELECT       equ #303b       ; https://wiki.specnext.dev/Sprite_Status/Slot_Select
SPRITE_ATTRIBUTE_UPLOAD         equ #57         ; https://wiki.specnext.dev/Sprite_Attribute_Upload
SPRITE_PATTERN_UPLOAD           equ #5b         ; https://wiki.specnext.dev/Sprite_Pattern_Upload
SPRITES_TRANSPARENCY_INDEX      equ #4b         ; https://wiki.specnext.dev/Sprites_Transparency_Index_Register

; Layer 2
LAYER_2_RAM_PAGE                equ #12         ; https://wiki.specnext.dev/Layer_2_RAM_Page_Register
LAYER_2_RAM_SHADOW_PAGE         equ #13         ; https://wiki.specnext.dev/Layer_2_RAM_Shadow_Page_Register
LAYER_2_CONTROL                 equ #70         ; https://wiki.specnext.dev/Layer_2_Control_Register
LAYER_2_ACCESS_PORT             equ #123b       ; https://wiki.specnext.dev/Layer_2_Access_Port
LAYER_2_X_OFFSET                equ #16         ; https://wiki.specnext.dev/Layer_2_X_Offset_Register
LAYER_2_X_OFFSET_MSB            equ #71         ; https://wiki.specnext.dev/Layer_2_X_Offset_MSB_Register
LAYER_2_Y_OFFSET                equ #17         ; https://wiki.specnext.dev/Layer_2_Y_Offset_Register

; LoRes
LORES_CONTROL                   equ #6a         ; https://wiki.specnext.dev/LoRes_Control_Register

; Sound
TURBO_SOUND_NEXT_CONTROL        equ #fffd       ; https://wiki.specnext.dev/Turbo_Sound_Next_Control

; Transparency
DISPLAY_CONTROL_1               equ #69         ; https://wiki.specnext.dev/Display_Control_1_Register
GLOBAL_TRANSPARENCY             equ #14         ; https://wiki.specnext.dev/Global_Transparency_Register
TRANSPARENCY_COLOR_FALLBACK     equ #4a         ; https://wiki.specnext.dev/Transparency_colour_fallback_Register

; Interrupts
VIDEO_LINE_INTERRUPT_CONTROL    equ #22         ; https://wiki.specnext.dev/Video_Line_Interrupt_Control_Register
VIDEO_LINE_INTERRUPT_VALUE      equ #23         ; https://wiki.specnext.dev/Video_Line_Interrupt_Value_Register
RASTER_INTERRUPT_CONTROL        equ #22         ; alias for VIDEO_LINE_INTERRUPT_CONTROL

; DMA
DATAGEAR_DMA_PORT               equ #6b         ; https://wiki.specnext.dev/Datagear_DMA_Port
ZXN_DMA_PORT                    equ #6b         ; alias for DATAGEAR_DMA_PORT


