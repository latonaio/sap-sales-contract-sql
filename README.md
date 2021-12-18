# sap-sales-contract-sql    

sap-sales-contract-sql は、主にエッジアプリケーションにおいて、SAPと連携された販売基本契約データを保存するSQLテーブルを作成するためのレポジトリです。  
sap-sales-contract-sql は、そのままクラウド環境におけるアプリケーションにも、適用可能です。  

## 前提条件  
sap-sales-contract-sql は、SQL の SAP とのデータ連携にあたり、オンプレミス版である（＝クラウド版ではない）SAPS4HANA API の利用を前提としています。  
クラウド版APIを利用する場合は、ご注意ください。  
https://api.sap.com/api/OP_API_SALES_CONTRACT_SRV_0001/overview   
本レポジトリ の sql設定ファイルの内容は、上記URL の API 仕様を前提としています。    

## sqlの設定ファイル

sap-sales-contract-sql には、sqlの設定ファイルとして、以下のファイルが含まれています。  

* sap-sales-contract-sql-header-data.sql（SAP 販売基本契約 - ヘッダデータ）  
* sap-sales-contract-sql-item-data.sql（SAP 販売基本契約 - 明細データ）  
* sap-sales-contract-sql-partner-data.sql（SAP 販売基本契約 - 取引先データ） 
* sap-sales-contract-sql-pricing-element-data.sql（SAP 販売基本契約 - 価格条件データ）  

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法

MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。

