Cloudflare Dynamic IP updater.

Download the script and add to cron.

CronTab -e

Add the following to check and update IP every 30 mins

30 * * * * ~/cloudflareupdate.sh
