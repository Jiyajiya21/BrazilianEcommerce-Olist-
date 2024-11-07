# Brazilian E-Commerce Statistical Analysis

## Project Abstract
This project features the commercial profile of products, customers and sellers that participate in the largest department store in Brazilian marketplaces. 
Calculated the frequency and price range of products that generate the most revenue. 
Used a seasonal decomposition model to extract seasonality and overall trends in the number of orders over time.

## Dataset
This is a well known dataset available from Kaggle. 
The dataset has information of 100k orders from 2016 to 2018 
made at multiple marketplaces in Brazil. 
Its features allows viewing an order from multiple dimensions: from order status, price,
payment and freight performance to customer location, product attributes and finally reviews written by customers. T
he dataset was generously provided Olist, the largest department store in Brazilian marketplaces. Olist connects small businesses from all over 
Brazil to channels without hassle and with a single contract. Those merchants are able to sell their products through the Olist Store and ship 
them directly to the customers using Olist logistics partners.

## Important notes about the data
* An order might have multiple items.
* Each item might be fulfilled by a distinct seller.
* All text identifying stores and partners where replaced by the names of Game of Thrones great houses.

## Schema
The full dataset is divided in 8 files: orders, payments, reviews, items, products, sellers, customers, geolocation. 
Descriptions of the columns can be found on the the Kaggle link above, or on the main script.

<img src="https://github.com/user-attachments/assets/788093e2-6334-413a-9df9-94d0c8ef1827" alt="Alt Text" width="800" height="450">
