if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/rolex-filter-bot/THALA_AJITH.git /THALA-FILTER-BOT
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /THALA-FILTER-BOT
fi
cd /THALA-FILTER-BOT
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
