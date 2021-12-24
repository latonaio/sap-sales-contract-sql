CREATE TABLE `sap-sales-contract-partner-data`
(
  `SalesContract`           varchar(10) NOT NULL,
  `PartnerFunction`         varchar(2) NOT NULL,
  `Customer`                varchar(10) DEFAULT NULL,
  `Supplier`                varchar(10) DEFAULT NULL,
  PRIMARY KEY (`SalesContract`, `PartnerFunction`),
  CONSTRAINT `SalesContract_fk` FOREIGN KEY (`SalesContract`) REFERENCES `sap-sales-contract-header-data` (`SalesContract`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
