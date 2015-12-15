osascript -e 'tell application "Terminal"
    do script "echo launch redis"
end tell'

pwd=`pwd`
osascript \
    -e "tell application \"Terminal\"" \
    -e "tell application \"System Events\" to keystroke \"t\" using {command down}" \
    -e "do script \"redis-server $pwd/7001/redis.conf\" in front window" \
    -e "tell application \"System Events\" to keystroke \"t\" using {command down}" \
    -e "do script \"redis-server $pwd/7003/redis.conf\" in front window" \
    -e "tell application \"System Events\" to keystroke \"t\" using {command down}" \
    -e "do script \"redis-server $pwd/7004/redis.conf\" in front window" \
    -e "end tell" > /dev/null


osascript -e 'tell application "Terminal"
    do script "echo launch redis sentinels"
end tell'

osascript \
    -e "tell application \"Terminal\"" \
    -e "tell application \"System Events\" to keystroke \"t\" using {command down}" \
    -e "do script \"redis-server $pwd/7001/sentinel.conf --sentinel\" in front window" \
    -e "tell application \"System Events\" to keystroke \"t\" using {command down}" \
    -e "do script \"redis-server $pwd/7003/sentinel.conf --sentinel\" in front window" \
    -e "tell application \"System Events\" to keystroke \"t\" using {command down}" \
    -e "do script \"redis-server $pwd/7004/sentinel.conf --sentinel\" in front window" \
    -e "end tell" > /dev/null

