CREATE TABLE `sap_sales_contract_item_data`
(
  `SalesContract`               varchar(10) NOT NULL,
  `SalesContractItem`           varchar(6) NOT NULL,
  `SalesContractItemCategory`   varchar(4) DEFAULT NULL,
  `SalesContractItemText`       varchar(40) DEFAULT NULL,
  `PurchaseOrderByCustomer`     varchar(35) DEFAULT NULL,
  `Material`                    varchar(40) DEFAULT NULL,
  `MaterialByCustomer`          varchar(35) DEFAULT NULL,
  `PricingDate`                 varchar(80) DEFAULT NULL,
  `RequestedQuantity`           varchar(17) DEFAULT NULL,
  `RequestedQuantityUnit`       varchar(3) DEFAULT NULL,
  `ItemGrossWeight`             varchar(17) DEFAULT NULL,
  `ItemNetWeight`               varchar(17) DEFAULT NULL,
  `ItemWeightUnit`              varchar(3) DEFAULT NULL,
  `ItemVolume`                  varchar(17) DEFAULT NULL,
  `ItemVolumeUnit`              varchar(3) DEFAULT NULL,
  `TransactionCurrency`         varchar(5) DEFAULT NULL,
  `NetAmount`                   varchar(13) DEFAULT NULL,
  `MaterialGroup`               varchar(9) DEFAULT NULL,
  `MaterialPricingGroup`        varchar(2) DEFAULT NULL,
  `Batch`                       varchar(10) DEFAULT NULL,
  `ProductionPlant`             varchar(4) DEFAULT NULL,
  `StorageLocation`             varchar(4) DEFAULT NULL,
  `ShippingPoint`               varchar(4) DEFAULT NULL,
  `IncotermsClassification`     varchar(3) DEFAULT NULL,
  `CustomerPaymentTerms`        varchar(4) DEFAULT NULL,
  `SalesDocumentRjcnReason`     varchar(2) DEFAULT NULL,
  `ItemBillingBlockReason`      varchar(2) DEFAULT NULL,
  `WBSElement`                  varchar(24) DEFAULT NULL,
  `ProfitCenter`                varchar(10) DEFAULT NULL,
  `ReferenceSDDocument`         varchar(10) DEFAULT NULL,
  `ReferenceSDDocumentItem`     varchar(6) DEFAULT NULL,
  `SDProcessStatus`             varchar(1) DEFAULT NULL,
  `SalesContractValidityStartDate` varchar(80) DEFAULT NULL,
  `SalesContractValidityEndDate` varchar(80) DEFAULT NULL,
  `SalesContractSignedDate`     varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SalesContract`, `SalesContractItem`),
  CONSTRAINT `SAPSalesContractItemData_fk` FOREIGN KEY (`SalesContract`) REFERENCES `sap_sales_contract_header_data` (`SalesContract`)
) ENGINE = InnoDB
DEFAULT CHARSET = utf8mb4;
