function g
  if test (count $argv) = 0
    find ~/Projects -maxdepth 2 ! -iname ".*" | cut -c 24- | fzf | read dir
  else
    find ~/Projects -maxdepth 2 ! -iname ".*" | cut -c 24- | fzf --query $argv| read dir
  end
  if [ ~/Projects/$dir ]
    cd ~/Projects/$dir
  end
end
