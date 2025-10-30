# Project Overview
This research project studies NFL Play-by-Play Data (sourced from nflreadr) to determine the statistical factors governing successful offensive plays (defined as achieving a First Down or Touchdown).
The core research question investigated is:
How do starting field position (yardline_100), down, and distance to go (ydstogo) impact the probability of an NFL offensive play achieving a successful outcome (First Down or Touchdown)?
The investigation utilized a structured data science workflow, including data preprocessing, exploration (EDA), supervised classification modeling, and evaluation.
# Methodology and Key Findings
The assignment implemented a Logistic Regression model as a supervised classification approach. Features used for prediction included down, ydstogo, yardline_100, shotgun, and no_huddle indicators.
• Data Preparation: Data cleaning involved ensuring standard offensive plays were analyzed, and features were preprocessed through scaling and one-hot encoding.
• Modeling: The Logistic Regression model was trained to predict the binary target variable, Successful_Play (1 = First Down or TD, 0 = Failure).
• Performance: The model achieved an accuracy of approximately 54.14% and a robust ROC-AUC score of 0.6552 (based on Experiment 2 simulation results), demonstrating predictive power significantly better than random chance (AUC=0.5).
• Conclusion: The experiments confirmed that basic positional indicators (down, distance, yardline) are the dominant drivers of offensive play success probability. Specifically, the combination of Down and Distance to Go (ydstogo) proved to be the most potent predictors.
# Repository Contents
This folder contains the three mandatory files:
<img width="732" height="549" alt="Screenshot 2025-10-30 at 6 59 37 PM" src="https://github.com/user-attachments/assets/a2d61fca-f6ab-4709-9a61-987fa607420f" />



# Analysis & Visualization
This file contains the complete data analysis workflow (preprocessing, exploration, Logistic Regression modeling, and evaluation). It includes all necessary visualizations, such as the Confusion Matrix and the Receiver Operating Characteristic (ROC) Curve (Figure 1 in the report).

