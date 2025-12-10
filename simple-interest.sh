#!/bin/bash

echo "Simple Interest Calculator"
echo "========================="
echo ""

echo "Enter principal amount: "
read principal

echo "Enter rate of interest (percent per annum): "
read rate

echo "Enter time period (in years): "
read time

# Calculate simple interest
# Formula: SI = (P * R * T) / 100
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

echo ""
echo "Simple Interest Calculation:"
echo "Principal Amount: $principal"
echo "Rate of Interest: $rate% per annum"
echo "Time Period: $time years"
echo ""
echo "Simple Interest: $simple_interest"
echo ""
echo "Total Amount: $(echo "scale=2; $principal + $simple_interest" | bc)"
