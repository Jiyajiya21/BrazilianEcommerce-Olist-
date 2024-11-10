# Brazilian E-Commerce Statistical Analysis

## Project Abstract
This project features the commercial profile of products, customers and sellers that participate in the largest department store in Brazilian marketplaces. 
Calculated the frequency and price range of products that generate the most revenue. 
Used a seasonal decomposition model to extract seasonality and overall trends in the number of orders over time.

## Dataset
This is a well known dataset available from Kaggle. 
The dataset has information of almost 100k orders from 2016 to 2018 
made at multiple marketplaces in Brazil. 
Its features allows viewing an order from multiple dimensions: from order status, price,
payment and freight performance to customer location, product attributes and finally reviews written by customers. 
The dataset was generously provided Olist, the largest department store in Brazilian marketplaces. Olist connects small businesses from all over 
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

## Questions 
* Payment Distribution by States
* Do orders vary throughout the year? If there any diffrence in orders on weekdays and weekends?
* What is the Famous Payment Method
* Shipping Days

## Payment Distribution by States

I have used a Bar chart in the tool tip to show the orders and payment distribution simultaneosly.

<img width="808" alt="Payment" src="https://github.com/user-attachments/assets/10f58629-a995-4bfe-92f6-8f4ffa6ef6b9">

## Do orders vary throughout the year? If there any diffrence in orders on weekdays and weekends?

I have used the Donut chart to show the distribution of orders as there were only two parameters.

<img width="507" alt="Weekday:end" src="https://github.com/user-attachments/assets/bbf905d8-36f7-49e7-9b70-2ebe6947e81e">

## What is the Famous Payment Method

I have used the bar chart to show what is the preferred mode of payment

<img width="560" height="400" alt="Pay_type" src="https://github.com/user-attachments/assets/13e002fc-b1b3-4ec1-92cf-e100da0c605d">

## Shipping days 

<img width="560" alt="Ship_days" src="https://github.com/user-attachments/assets/85d392a4-8374-4a34-b00d-021c58c2cda5">


## Conclusion
* São Paulo (SP) is the highest ranked region by average transaction value for both customers and sellers.
* Amapá has the larget number of shipping days.
* Mostly payments are done with Credit Cards.
* Weekends does not have much hike compared to weekdays.

## Recommendations 
* #### Increase Weekend Promotions
  The finding that weekends don’t show a significant hike in sales compared to weekdays suggests that there may be an opportunity to drive more weekend sales. Offering exclusive weekend discounts, flash sales, or free shipping on weekend orders could encourage customers to shop more during these periods.
* #### Monitor Shipping Performance Across All Regions -
  Given the challenge observed in Amapá, it may be worthwhile to monitor and compare shipping performance across all regions. Identifying areas with potential delays or inconsistent delivery experiences can allow for proactive solutions to optimize the overall customer experience.
* #### Focus Marketing Efforts on São Paulo (SP)
  Since São Paulo has the highest average transaction value for both customers and sellers, it could be beneficial to focus targeted marketing efforts in this region. This could include offering special promotions, loyalty programs, or personalized offers to drive repeat purchases and increase customer lifetime value in São Paulo.
