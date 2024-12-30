# import the smtplib module. It should be included in Python by default
import smtplib

sender_email = "ramiboutas@hotmail.com"
password = "****"
receiver_email = "ramiboutassghount@gmail.com"
message = """Subject: Hi there

This message is sent from Python."""

# set up the SMTP server
s = smtplib.SMTP(host="smtp.office365.com", port=587)
s.starttls()
s.login(sender_email, password)

s.sendmail(sender_email, receiver_email, message)

s.close()
