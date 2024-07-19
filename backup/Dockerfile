FROM ubuntu:latest
RUN apt-get update && apt-get install -y cron mysql-client
COPY backup.sh /usr/local/bin/backup.sh
RUN chmod +x /usr/local/bin/backup.sh
COPY crontab /etc/cron.d/backup-cron
RUN chmod 0644 /etc/cron.d/backup-cron
RUN crontab /etc/cron.d/backup-cron
CMD ["cron", "-f"]
