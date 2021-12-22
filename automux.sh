# automux.sh is a script to automate the set up of my regular terminal workflow

tmux new-session -d -s 'stack' # Makes new tmux session named stack

tmux rename-window -t 0 'laptop' # Renames window 0. This is my local session

tmux split-window -h -t 'laptop' # splits a horizontal stack

tmux send-keys -t 'laptop' "neofetch" C-m

tmux split-window -v -t 'laptop' # splits a veritcal stack

# the above splits gives me one top to bottom pane on the left of my screen,
# and two panes stacked on top of each other in the right. 

tmux new-window -t $session:1 -n "server9000" #new window named 'server9000'

tmux send-keys -t 'server9000' "oper" C-m #Sends the command 'oper' to above window
    # 'oper' is an alias for a script that connects me to my local server via ssh
tmux send-keys -t 'server9000' "neofetch" C-m

tmux new-window -t $session:2 -n "koala" 

tmux send-keys -t 'koala' 'koala' C-m

tmux send-keys -t 'koala' 'neofetch' C-m

tmux attach-session -t 'stack':0 #attaches to the session at window 0
 
