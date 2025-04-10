DECLARE
    v_cursor SYS_REFCURSOR;

    -- Variables para cada columna según el procedimiento
    v_deudnrTPPAL VARCHAR2(9);
    v_deuddrTPPAL VARCHAR2(11);
    v_deudIDENTIDAD VARCHAR2(4);
    v_deudIDSUCURSAL VARCHAR2(4);
    v_deudIDNUMEROOPERAC VARCHAR2(12);
    v_deudIDPRODUCTOALT VARCHAR2(2);
    v_deudIDSUBPRODALT VARCHAR2(4);
    v_deudIDSECUENCIA VARCHAR2(3);
    v_deudIDRESTO VARCHAR2(6);
    v_deudNROINTERNO VARCHAR2(20);
    v_deudNROPAGARE VARCHAR2(12);
    v_deudPRODUCTOSBIF VARCHAR2(3);
    v_deudCODSUCCONTABLE VARCHAR2(4);
    v_deudACTDESTOPERACION VARCHAR2(3);
    v_deudTIPOCREDITOSBIF VARCHAR2(2);
    v_deudOFICIALCLIENTE VARCHAR2(4);
    v_deudOFICIALOPE VARCHAR2(4);
    v_deudOFICIALVTA VARCHAR2(4);
    v_deudINDCARGOAUTOMATICO VARCHAR2(1);
    v_deudNROCTACARGOAUTOMATIC VARCHAR2(20);
    v_deudINDCOBZAJUDICIAL VARCHAR2(1);
    v_deudCUENTACONTABLEORIGINAL VARCHAR2(11);
    v_deudINDSEGDESGR VARCHAR2(1);
    v_deudINDSEGINCEN VARCHAR2(1);
    v_deudINDSEGCESAN VARCHAR2(1);
    v_deudINDSEGOTRO VARCHAR2(1);
    v_deudSISTEMAORIGEN VARCHAR2(3);
    v_deudBANCOORIGENOPERACION VARCHAR2(1);
    v_deudFECHACURS VARCHAR2(6);
    v_deudFECHAOTOR VARCHAR2(6);
    v_deudFECHARENOV VARCHAR2(6);
    v_deudFECHAEXTI VARCHAR2(6);
    v_deudFECHA1ERVCTO VARCHAR2(6);
    v_deudFECHAPROXVCTOCAP VARCHAR2(6);
    v_deudFECHAPROXVCTOINT VARCHAR2(6);
    v_deudFECHASUSPDEVEN VARCHAR2(6);
    v_deudFECHAINTPAGADOS VARCHAR2(6);
    v_deudFECHAULTPAGO VARCHAR2(6);
    v_deudFECHATRASCVENC1ERA VARCHAR2(6);
    v_deudFECHATRASCASTG1ERA VARCHAR2(6);
    v_deudMTOORIGCDTOMO VARCHAR2(13);
    v_deudMTORENOCDTOMO VARCHAR2(13);
    v_deudCUADROPAGO VARCHAR2(3);
    v_deudMTOCUOTAMO VARCHAR2(13);
    v_deudNUMCUOPACTADAS VARCHAR2(3);
    v_deudNROCUOIMPAGAS VARCHAR2(3);
    v_deudNTOCUOPAGADAS VARCHAR2(3);
    v_deudPERIODCUOTACAP VARCHAR2(2);
    v_deudPERIODCUOTAINT VARCHAR2(2);
    v_deudPZOPROMPOND VARCHAR2(5);
    v_deudPZOPROMRESI VARCHAR2(5);
    v_deudTIPCALCULO VARCHAR2(1);
    v_deudCODVARTASA VARCHAR2(1);
    v_deudEXPTASA VARCHAR2(1);
    v_deudCODTASABASEBANCO VARCHAR2(5);
    v_deudCODTASABASESBIF VARCHAR2(3);
    v_deudFECULTCAMBTASA VARCHAR2(6);
    v_deudFECPROCAMTASA VARCHAR2(6);
    v_deudVALORTASABASE VARCHAR2(2);
    v_deudSPREAD VARCHAR2(2);
    v_deudTASAVIGENTE VARCHAR2(2);
    v_deudTASATRANSF VARCHAR2(2);
    v_deudTASAVIGENTE2 VARCHAR2(2);
    v_deudCODMDABANCO VARCHAR2(3);
    v_deudCODMDASBIF VARCHAR2(3);
    v_deudTIPMDACONTABCAP VARCHAR2(3);
    v_deudTIPMDACONTABINT VARCHAR2(3);
    v_deudTIPOCAMBIO VARCHAR2(7);
    v_deudINDCDTORENEGOCIADO VARCHAR2(1);
    v_deudPROCDESEMRNG VARCHAR2(3);
    v_deudMTOACTIVADORNG VARCHAR2(13);
    v_deudINDCOMEXALADI VARCHAR2(1);
    v_deudFECAPERCARTACDTO VARCHAR2(6);
    v_deudINDCREDADMINIST VARCHAR2(1);
    v_deudCODCOMPOSICIONINVFIN VARCHAR2(5);
    v_deudBLQTARJETA VARCHAR2(2);
    v_deudNROTARJADICIONALES VARCHAR2(3);
    v_deudMTOLINEAMO VARCHAR2(13);
    v_deudDISLINEAMO VARCHAR2(13);
    v_deudNROREGISTROSCUOTAS VARCHAR2(3);
    v_deudNROREGISTROSRELACIONES VARCHAR2(3);
    v_deudPORCCOMISION VARCHAR2(3);
    v_deudVALORBIEN VARCHAR2(13);
    v_deudCODACTECO VARCHAR2(2);
    v_deudIND_RESPONSOPER VARCHAR2(1);
    v_deudNRTPRESPONSFAC VARCHAR2(9);
    v_deudDRTPRESPONSFAC VARCHAR2(1);

BEGIN
    -- Llama al procedimiento que abre el cursor
    SP_CNFG_INTFZ_DEUD(v_cursor);
    
    LOOP
        FETCH v_cursor INTO 
            v_deudnrTPPAL, 
            v_deuddrTPPAL, 
            v_deudIDENTIDAD, 
            v_deudIDSUCURSAL,
            v_deudIDNUMEROOPERAC, 
            v_deudIDPRODUCTOALT, 
            v_deudIDSUBPRODALT,
            v_deudIDSECUENCIA, 
            v_deudIDRESTO, 
            v_deudNROINTERNO, 
            v_deudNROPAGARE, 
            v_deudPRODUCTOSBIF, 
            v_deudCODSUCCONTABLE, 
            v_deudACTDESTOPERACION, 
            v_deudTIPOCREDITOSBIF, 
            v_deudOFICIALCLIENTE, 
            v_deudOFICIALOPE, 
            v_deudOFICIALVTA, 
            v_deudINDCARGOAUTOMATICO, 
            v_deudNROCTACARGOAUTOMATIC, 
            v_deudINDCOBZAJUDICIAL, 
            v_deudCUENTACONTABLEORIGINAL, 
            v_deudINDSEGDESGR, 
            v_deudINDSEGINCEN, 
            v_deudINDSEGCESAN, 
            v_deudINDSEGOTRO, 
            v_deudSISTEMAORIGEN, 
            v_deudBANCOORIGENOPERACION, 
            v_deudFECHACURS, 
            v_deudFECHAOTOR, 
            v_deudFECHARENOV, 
            v_deudFECHAEXTI, 
            v_deudFECHA1ERVCTO, 
            v_deudFECHAPROXVCTOCAP, 
            v_deudFECHAPROXVCTOINT, 
            v_deudFECHASUSPDEVEN, 
            v_deudFECHAINTPAGADOS, 
            v_deudFECHAULTPAGO, 
            v_deudFECHATRASCVENC1ERA, 
            v_deudFECHATRASCASTG1ERA, 
            v_deudMTOORIGCDTOMO, 
            v_deudMTORENOCDTOMO, 
            v_deudCUADROPAGO, 
            v_deudMTOCUOTAMO, 
            v_deudNUMCUOPACTADAS, 
            v_deudNROCUOIMPAGAS, 
            v_deudNTOCUOPAGADAS, 
            v_deudPERIODCUOTACAP, 
            v_deudPERIODCUOTAINT, 
            v_deudPZOPROMPOND, 
            v_deudPZOPROMRESI, 
            v_deudTIPCALCULO, 
            v_deudCODVARTASA, 
            v_deudEXPTASA, 
            v_deudCODTASABASEBANCO, 
            v_deudCODTASABASESBIF, 
            v_deudFECULTCAMBTASA, 
            v_deudFECPROCAMTASA, 
            v_deudVALORTASABASE, 
            v_deudSPREAD, 
            v_deudTASAVIGENTE, 
            v_deudTASATRANSF, 
            v_deudTASAVIGENTE2, 
            v_deudCODMDABANCO, 
            v_deudCODMDASBIF, 
            v_deudTIPMDACONTABCAP, 
            v_deudTIPMDACONTABINT, 
            v_deudTIPOCAMBIO, 
            v_deudINDCDTORENEGOCIADO, 
            v_deudPROCDESEMRNG, 
            v_deudMTOACTIVADORNG, 
            v_deudINDCOMEXALADI, 
            v_deudFECAPERCARTACDTO, 
            v_deudINDCREDADMINIST, 
            v_deudCODCOMPOSICIONINVFIN, 
            v_deudBLQTARJETA, 
            v_deudNROTARJADICIONALES, 
            v_deudMTOLINEAMO, 
            v_deudDISLINEAMO, 
            v_deudNROREGISTROSCUOTAS, 
            v_deudNROREGISTROSRELACIONES, 
            v_deudPORCCOMISION, 
            v_deudVALORBIEN, 
            v_deudCODACTECO, 
            v_deudIND_RESPONSOPER, 
            v_deudNRTPRESPONSFAC, 
            v_deudDRTPRESPONSFAC;
        
        EXIT WHEN v_cursor%NOTFOUND;
        
        -- Muestra los valores en la consola
        DBMS_OUTPUT.PUT_LINE(
            v_deudnrTPPAL || ' ' ||
            v_deuddrTPPAL || ' ' ||
            v_deudIDENTIDAD || ' ' ||
            v_deudIDSUCURSAL || ' ' ||
            v_deudIDNUMEROOPERAC || ' ' ||
            v_deudIDPRODUCTOALT || ' ' ||
            v_deudIDSUBPRODALT || ' ' ||
            v_deudIDSECUENCIA || ' ' ||
            v_deudIDRESTO || ' ' ||
            v_deudNROINTERNO || ' ' ||
            v_deudNROPAGARE || ' ' ||
            v_deudPRODUCTOSBIF || ' ' ||
            v_deudCODSUCCONTABLE || ' ' ||
            v_deudACTDESTOPERACION || ' ' ||
            v_deudTIPOCREDITOSBIF || ' ' ||
            v_deudOFICIALCLIENTE || ' ' ||
            v_deudOFICIALOPE || ' ' ||
            v_deudOFICIALVTA || ' ' ||
            v_deudINDCARGOAUTOMATICO || ' ' ||
            v_deudNROCTACARGOAUTOMATIC || ' ' ||
            v_deudINDCOBZAJUDICIAL || ' ' ||
            v_deudCUENTACONTABLEORIGINAL || ' ' ||
            v_deudINDSEGDESGR || ' ' ||
            v_deudINDSEGINCEN || ' ' ||
            v_deudINDSEGCESAN || ' ' ||
            v_deudINDSEGOTRO || ' ' ||
            v_deudSISTEMAORIGEN || ' ' ||
            v_deudBANCOORIGENOPERACION || ' ' ||
            v_deudFECHACURS || ' ' ||
            v_deudFECHAOTOR || ' ' ||
            v_deudFECHARENOV || ' ' ||
            v_deudFECHAEXTI || ' ' ||
            v_deudFECHA1ERVCTO || ' ' ||
            v_deudFECHAPROXVCTOCAP || ' ' ||
            v_deudFECHAPROXVCTOINT || ' ' ||
            v_deudFECHASUSPDEVEN || ' ' ||
            v_deudFECHAINTPAGADOS || ' ' ||
            v_deudFECHAULTPAGO || ' ' ||
            v_deudFECHATRASCVENC1ERA || ' ' ||
            v_deudFECHATRASCASTG1ERA || ' ' ||
            v_deudMTOORIGCDTOMO || ' ' ||
            v_deudMTORENOCDTOMO || ' ' ||
            v_deudCUADROPAGO || ' ' ||
            v_deudMTOCUOTAMO || ' ' ||
            v_deudNUMCUOPACTADAS || ' ' ||
            v_deudNROCUOIMPAGAS || ' ' ||
            v_deudNTOCUOPAGADAS || ' ' ||
            v_deudPERIODCUOTACAP || ' ' ||
            v_deudPERIODCUOTAINT || ' ' ||
            v_deudPZOPROMPOND || ' ' ||
            v_deudPZOPROMRESI || ' ' ||
            v_deudTIPCALCULO || ' ' ||
            v_deudCODVARTASA || ' ' ||
            v_deudEXPTASA || ' ' ||
            v_deudCODTASABASEBANCO || ' ' ||
            v_deudCODTASABASESBIF || ' ' ||
            v_deudFECULTCAMBTASA || ' ' ||
            v_deudFECPROCAMTASA || ' ' ||
            v_deudVALORTASABASE || ' ' ||
            v_deudSPREAD || ' ' ||
            v_deudTASAVIGENTE || ' ' ||
            v_deudTASATRANSF || ' ' ||
            v_deudTASAVIGENTE2 || ' ' ||
            v_deudCODMDABANCO || ' ' ||
            v_deudCODMDASBIF || ' ' ||
            v_deudTIPMDACONTABCAP || ' ' ||
            v_deudTIPMDACONTABINT || ' ' ||
            v_deudTIPOCAMBIO || ' ' ||
            v_deudINDCDTORENEGOCIADO || ' ' ||
            v_deudPROCDESEMRNG || ' ' ||
            v_deudMTOACTIVADORNG || ' ' ||
            v_deudINDCOMEXALADI || ' ' ||
            v_deudFECAPERCARTACDTO || ' ' ||
            v_deudINDCREDADMINIST || ' ' ||
            v_deudCODCOMPOSICIONINVFIN || ' ' ||
            v_deudBLQTARJETA || ' ' ||
            v_deudNROTARJADICIONALES || ' ' ||
            v_deudMTOLINEAMO || ' ' ||
            v_deudDISLINEAMO || ' ' ||
            v_deudNROREGISTROSCUOTAS || ' ' ||
            v_deudNROREGISTROSRELACIONES || ' ' ||
            v_deudPORCCOMISION || ' ' ||
            v_deudVALORBIEN || ' ' ||
            v_deudCODACTECO || ' ' ||
            v_deudIND_RESPONSOPER || ' ' ||
            v_deudNRTPRESPONSFAC || ' ' ||
            v_deudDRTPRESPONSFAC
        );
    END LOOP;

    CLOSE v_cursor; -- Cierra el cursor al final
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;