#!/bin/bash

REPORT="log-report.txt"

echo "=============================================" > "$REPORT"
echo "      LINUX LOG MONITORING REPORT" >> "$REPORT"
echo "=============================================" >> "$REPORT"
echo "" >> "$REPORT"

echo "Server: $(hostname)" >> "$REPORT"
echo "Date: $(date)" >> "$REPORT"
echo "" >> "$REPORT"


# --------------------------------------------
# 1. FAILED LOGIN ATTEMPTS
# --------------------------------------------

echo "=============================================" >> "$REPORT"
echo "1. FAILED LOGIN ATTEMPTS" >> "$REPORT"
echo "=============================================" >> "$REPORT"

FAILED_COUNT=$(sudo grep -c "Failed password" /var/log/auth.log)

echo "Total Failed Login Attempts: $FAILED_COUNT" >> "$REPORT"
echo "" >> "$REPORT"

sudo grep "Failed password" /var/log/auth.log | tail -20 >> "$REPORT"

echo "" >> "$REPORT"


# --------------------------------------------
# 2. SSH LOGIN ACTIVITY
# --------------------------------------------

echo "=============================================" >> "$REPORT"
echo "2. SSH LOGIN ACTIVITY" >> "$REPORT"
echo "=============================================" >> "$REPORT"

ACCEPTED_COUNT=$(sudo grep -c "Accepted" /var/log/auth.log)

echo "Total Successful SSH Logins: $ACCEPTED_COUNT" >> "$REPORT"
echo "" >> "$REPORT"

sudo grep "Accepted" /var/log/auth.log | tail -20 >> "$REPORT"

echo "" >> "$REPORT"

echo "Recent Login Sessions:" >> "$REPORT"
last -10 >> "$REPORT"

echo "" >> "$REPORT"


# --------------------------------------------
# 3. SYSTEM ERRORS
# --------------------------------------------

echo "=============================================" >> "$REPORT"
echo "3. SYSTEM ERRORS" >> "$REPORT"
echo "=============================================" >> "$REPORT"

ERROR_COUNT=$(sudo journalctl -p err -b --no-pager | wc -l)

echo "System Error Entries: $ERROR_COUNT" >> "$REPORT"
echo "" >> "$REPORT"

sudo journalctl -p err -b --no-pager | tail -20 >> "$REPORT"

echo "" >> "$REPORT"


# --------------------------------------------
# 4. WARNING MESSAGES
# --------------------------------------------

echo "=============================================" >> "$REPORT"
echo "4. WARNING MESSAGES" >> "$REPORT"
echo "=============================================" >> "$REPORT"

WARNING_COUNT=$(sudo journalctl -p warning -b --no-pager | wc -l)

echo "Warning Entries: $WARNING_COUNT" >> "$REPORT"
echo "" >> "$REPORT"

sudo journalctl -p warning -b --no-pager | tail -20 >> "$REPORT"

echo "" >> "$REPORT"


# --------------------------------------------
# CONCLUSION
# --------------------------------------------

echo "=============================================" >> "$REPORT"
echo "5. CONCLUSION" >> "$REPORT"
echo "=============================================" >> "$REPORT"

echo "Linux authentication and system logs were analyzed." >> "$REPORT"
echo "The report contains:" >> "$REPORT"
echo "- Failed login attempts" >> "$REPORT"
echo "- Successful SSH login activity" >> "$REPORT"
echo "- System errors" >> "$REPORT"
echo "- Warning messages" >> "$REPORT"

echo "" >> "$REPORT"
echo "Report generated successfully on $(date)." >> "$REPORT"

echo ""
echo "============================================="
echo " Log Monitoring Completed Successfully"
echo "============================================="
echo ""
echo "Report created: $REPORT"
echo ""
echo "Summary:"
echo "Failed Login Attempts : $FAILED_COUNT"
echo "Successful SSH Logins : $ACCEPTED_COUNT"
echo "System Errors         : $ERROR_COUNT"
echo "Warning Messages      : $WARNING_COUNT"
