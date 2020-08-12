Cloudflare Dynamic IP updater.

Download the script and update all "REPLACE_WITH" from the creds on cloudflare then add to cron.

See https://api.cloudflare.com/#dns-records-for-a-zone-create-dns-record

CronTab -e

Add the following to check and update IP every 30 mins

30 * * * * ~/cloudflareupdate.sh
