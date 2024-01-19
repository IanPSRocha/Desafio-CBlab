INSERT INTO GuestChecks (guestCheckId, chkNum, opnBusDt, opnUTC, opnLcl, clsdBusDt, clsdUTC, clsdLcl, lastTransUTC, lastTransLcl, lastUpdatedUTC, lastUpdatedLcl, clsdFlag, subTtl, nonTxblSlsTtl, chkTtl, dscTtl, payTtl, balDueTtl, rvcNum, otNum, empNum)
VALUES (1, 9485, '2023-12-10', '2023-12-10T13:12:52', '2023-12-10T10:12:52', '2023-12-10', '2023-12-10T13:44:44', '2023-12-10T10:44:44', '2023-12-10T13:44:53', '2023-12-10T10:44:53', '2023-12-10T13:45:03', '2023-12-10T10:45:03', true, 313.9, NULL, 313.9, 0, 313.9, NULL, 110, 5, 653007);

INSERT INTO Taxes (taxNum, guestCheckId, txblSlsTtl, taxCollTtl, taxRate, type)
VALUES (5, 1, 292, 31.29, 12, 3);

INSERT INTO DetailLines (guestCheckLineItemId, guestCheckId, dtlOtNum, lineNum, dtlId, detailUTC, detailLcl, lastUpdateUTC, lastUpdateLcl, busDt, wsNum, dspTtl, dspQty, aggTtl, aggQty, chkEmpId, chkEmpNum, svcRndNum)
VALUES (5930161458, 1, 5, 1, 1, '2023-12-10T13:12:57', '2023-12-10T10:12:57', '2023-12-10T13:45:03', '2023-12-10T10:45:03', '2023-12-10', 99, 292, 1, 292, 1, 7755979, 653207, 1);

INSERT INTO MenuItem (miNum, detailLineId, inclTax, activeTaxes, prcLvl)
VALUES (7021, 5930161458, 31.285714, '5', 8);

INSERT INTO Discount (discountId, detailLineId, discountType, discountAmount)
VALUES (1, 5930161458, 'Percentage', 10.00);

INSERT INTO ServiceCharge (serviceChargeId, detailLineId, serviceChargeType, serviceChargeAmount)
VALUES (1, 5930161458, 'Percentage', 5.00);

INSERT INTO TenderMedia (tenderMediaId, detailLineId, tenderType, tenderAmount)
VALUES (1, 5930161458, 'Cash', 20.00);

INSERT INTO ErrorCode (errorCodeId, detailLineId, errorCodeType, errorCodeDescription)
VALUES (1, 5930161458, 'Validation', 'Invalid item quantity');