alias do='docker'
alias dp='docker ps -a'
alias dpa='docker ps -a --no-trunc'
alias dl='docker logs -f'
alias dr='docker restart'
alias di='docker images -a'

alias drmi='docker rmi $(docker images -a --filter=dangling=true -q)' # clean all dangling images
alias drmc='docker rm $(docker ps --filter=status=exited --filter=status=created -q)' # remove stopped cont
alias drmp='docker system prune -a' #  remove any stopped containers and all unused images (not just dangling images),

# remove entire cache
alias dclear='docker kill $(docker ps -q) \
              drmc \
              docker rmi $(docker images -a -q)'

alias dbash='docker exec -it $1 bash'


