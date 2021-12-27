CREATE TABLE `sap_sales_contract_header_partner_data`
(
  `SalesContract`           varchar(10) NOT NULL,
  `PartnerFunction`         varchar(2) NOT NULL,
  `Customer`                varchar(10) DEFAULT NULL,
  `Supplier`                varchar(10) DEFAULT NULL,
  PRIMARY KEY (`SalesContract`, `PartnerFunction`),
  CONSTRAINT `SAPSalesContractPartnerData_fk` FOREIGN KEY (`SalesContract`) REFERENCES `sap_sales_contract_header_data` (`SalesContract`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
