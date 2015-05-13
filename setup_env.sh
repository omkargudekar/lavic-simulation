cat << "EOF"
.____                .__        
|    |   _____ ___  _|__| ____  
|    |   \__  \\  \/ /  |/ ___\ 
|    |___ / __ \\   /|  \  \___ 
|_______ (____  /\_/ |__|\___  >
        \/    \/             \/ 
  _________.__              .__          __  .__               
 /   _____/|__| _____  __ __|  | _____ _/  |_|__| ____   ____  
 \_____  \ |  |/     \|  |  \  | \__  \\   __\  |/  _ \ /    \ 
 /        \|  |  Y Y  \  |  /  |__/ __ \|  | |  (  <_> )   |  \
/_______  /|__|__|_|  /____/|____(____  /__| |__|\____/|___|  /
        \/          \/                \/                    \/ 


Team : Fantastic 5
-----------------------
- Amit Dubey
- Dhaval Kolapkar
- Omkar Gudekar
- Harsh Malewar
- Sagar Bendale   
EOF

current_dir=$(pwd)


osascript -e 'tell application "Terminal" to do script "python '$current_dir'/name_server.py"'
sleep 5
osascript -e 'tell application "Terminal" to do script "python '$current_dir'/lavic_environment/customer_queue.py"'
sleep 2
osascript -e 'tell application "Terminal" to do script "python '$current_dir'/lavic_environment/order_queue.py"'
sleep 2
osascript -e 'tell application "Terminal" to do script "python '$current_dir'/lavic_environment/pending_order_queue.py"'
sleep 2
osascript -e 'tell application "Terminal" to do script "python '$current_dir'/lavic_environment/menu_card.py '$current_dir'/lavic_environment/menu.json"'
sleep 2
osascript -e 'tell application "Terminal" to do script "python '$current_dir'/chef.py"'
sleep 2
osascript -e 'tell application "Terminal" to do script "python '$current_dir'/cashier.py"'
sleep 2
osascript -e 'tell application "Terminal" to do script "python '$current_dir'/cashier.py"'