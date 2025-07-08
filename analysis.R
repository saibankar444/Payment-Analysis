> #Loading the required libraries 
> library(ggplot2)
> library(dplyr)

> #Loading the dataset
> df <- read.csv("C:/Users/HP/OneDrive/Desktop/juspay_Payment_Analysis/Data/transactions.csv", stringsAsFactors = FALSE)
> 
> #phrase timestamp correctly
> df$timestamp <- as.POSIXct(df$timestamp, format = "%Y-%m-%d %H:%M:%S")
> 
> #plot1: Payment Status Distribution
> ggplot(df, aes(x = status)) +
+   geom_bar(fill = "steelblue") +
+   ggtitle("Payment Status Distribution") +
+   theme_minimal()
> 

> #Plot2:Total Success Amount per Payment Method
> df %>%
+   filter(status == "success") %>%
+   group_by(payment_method) %>%
+   summarise(success_amount = sum(amount)) %>%
+   ggplot(aes(x = payment_method, y = success_amount, fill = payment_method)) +
+   geom_col() +
+   ggtitle("Total Successful Amount by Payment Method") +
+   theme_minimal()
> 
> 
> #Plot 3: Failure rate by Payment Method
> df %>%
+   group_by(payment_method) %>%
+   summarise(
+     total = n(),
+     failed = sum(status == "failed"),
+     failure_rate = failed / total
+   ) %>%
+   ggplot(aes(x = payment_method, y = failure_rate, fill = payment_method)) +
+   geom_col() +
+   ggtitle("Failure Rate by Payment Method") +
+   theme_minimal()
> 
> 
> 
> #Plot 4: Failed Transaction in an Hour of a day
> df$hour <- format(df$timestamp, "%H")
> 
> df %>%
+   filter(status == "failed") %>%
+   ggplot(aes(x = hour)) +
+   geom_bar(fill = "tomato") +
+   ggtitle("Failed Transactions by Hour") +
+   theme_minimal()
> save.image("C:\\Users\\HP\\OneDrive\\Desktop\\juspay_Payment_Analysis\\Scripts\\.RData")
> 
