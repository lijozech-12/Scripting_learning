import smtplib
from email.mime.text import MIMEText

msg = MIMEText('This is the body of the email')
msg['Subject'] = 'Email Subject'
msg['From'] = 'you@example.com'
msg['To'] = 'recipient@example.com'

with smtplib.SMTP('smtp.example.com', 587) as server:
    server.starttls()
    server.login('your_username','your_password')
    server.send_message(msg)