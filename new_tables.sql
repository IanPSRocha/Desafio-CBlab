CREATE TABLE GuestChecks (
  guestCheckId INT PRIMARY KEY,
  chkNum INT,
  opnBusDt DATE,
  opnUTC DATETIME,
  opnLcl DATETIME,
  clsdBusDt DATE,
  clsdUTC DATETIME,
  clsdLcl DATETIME,
  lastTransUTC DATETIME,
  lastTransLcl DATETIME,
  lastUpdatedUTC DATETIME,
  lastUpdatedLcl DATETIME,
  clsdFlag BOOLEAN,
  subTtl DECIMAL(10,2),
  nonTxblSlsTtl DECIMAL(10,2),
  chkTtl DECIMAL(10,2),
  dscTtl DECIMAL(10,2),
  payTtl DECIMAL(10,2),
  balDueTtl DECIMAL(10,2),
  rvcNum INT,
  otNum INT,
  empNum INT,
);

CREATE TABLE Taxes (
  taxNum INT PRIMARY KEY,
  guestCheckId INT,
  txblSlsTtl DECIMAL(10,2),
  taxCollTtl DECIMAL(10,2),
  taxRate DECIMAL(5,2),
  type INT,
  FOREIGN KEY (guestCheckId) REFERENCES GuestChecks(guestCheckId)
);

CREATE TABLE DetailLines (
  guestCheckLineItemId INT PRIMARY KEY,
  dtlOtNum INT,
  lineNum INT,
  dtlId INT,
  detailUTC DATETIME,
  detailLcl DATETIME,
  lastUpdateUTC DATETIME,
  lastUpdateLcl DATETIME,
  busDt DATE,
  wsNum INT,
  dspTtl DECIMAL(10,2),
  dspQty INT,
  aggTtl DECIMAL(10,2),
  aggQty INT,
  chkEmpId INT,
  chkEmpNum INT,
  svcRndNum INT,
  FOREIGN KEY (guestCheckId) REFERENCES GuestChecks(guestCheckId)
);

CREATE TABLE MenuItem (
  miNum INT PRIMARY KEY,
  detailLineId INT,
  inclTax DECIMAL(5,2),
  activeTaxes VARCHAR(255),
  prcLvl INT,
  FOREIGN KEY (detailLineId) REFERENCES DetailLines(guestCheckLineItemId)
);

CREATE TABLE Discount (
  discountId INT PRIMARY KEY,
  detailLineId INT,
  discountType VARCHAR(50),
  discountAmount DECIMAL(10,2),
  FOREIGN KEY (detailLineId) REFERENCES DetailLines(guestCheckLineItemId)
);

CREATE TABLE ServiceCharge (
  serviceChargeId INT PRIMARY KEY,
  detailLineId INT,
  serviceChargeType VARCHAR(50),
  serviceChargeAmount DECIMAL(10,2),
  FOREIGN KEY (detailLineId) REFERENCES DetailLines(guestCheckLineItemId)
);

CREATE TABLE TenderMedia (
  tenderMediaId INT PRIMARY KEY,
  detailLineId INT,
  tenderType VARCHAR(50),
  tenderAmount DECIMAL(10,2),
  FOREIGN KEY (detailLineId) REFERENCES DetailLines(guestCheckLineItemId)
);

CREATE TABLE ErrorCode (
  errorCodeId INT PRIMARY KEY,
  detailLineId INT,
  errorCodeType VARCHAR(50),
  errorCodeDescription VARCHAR(255),
  FOREIGN KEY (detailLineId) REFERENCES DetailLines(guestCheckLineItemId)
);
