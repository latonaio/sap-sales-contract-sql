CREATE TABLE `sap-sales-contract-pricing-element-data`
(
  `SalesContract`                 varchar(10) NOT NULL,
  `SalesContractItem`             varchar(6) NOT NULL,
  `PricingProcedureStep`          varchar(3) NOT NULL,
  `PricingProcedureCounter`       varchar(3) NOT NULL,
  `ConditionType`                 varchar(4) DEFAULT NULL,
  `PricingDateTime`               datetime DEFAULT NULL,
  `ConditionCalculationType`      varchar(3) DEFAULT NULL,
  `ConditionBaseValue`            varchar(13) DEFAULT NULL,
  `ConditionRateValue`            varchar(13) DEFAULT NULL,
  `ConditionCurrency`             varchar(5) DEFAULT NULL,
  `ConditionQuantity`             varchar(6) DEFAULT NULL,
  `ConditionQuantityUnit`         varchar(3) DEFAULT NULL,
  `ConditionCategory`             varchar(1) DEFAULT NULL,
  `PricingScaleType`              varchar(1) DEFAULT NULL,
  `ConditionRecord`               varchar(10) DEFAULT NULL,
  `ConditionSequentialNumber`     varchar(3) DEFAULT NULL,
  `TaxCode`                       varchar(2) DEFAULT NULL,
  `ConditionAmount`               varchar(13) DEFAULT NULL,
  `TransactionCurrency`           varchar(5) DEFAULT NULL,
  `PricingScaleBasis`             varchar(3) DEFAULT NULL,
  `ConditionScaleBasisValue`      varchar(13) DEFAULT NULL,
  `ConditionScaleBasisUnit`       varchar(3) DEFAULT NULL,
  `ConditionScaleBasisCurrency`   varchar(5) DEFAULT NULL,
  `ConditionIsManuallyChanged`    tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`SalesContract`, `SalesContractItem`, `PricingProcedureStep`, `PricingProcedureCounter`),
  CONSTRAINT `SalesContract_fk` FOREIGN KEY (`SalesContract`) REFERENCES `sap-sales-contract-header-data` (`SalesContract`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
