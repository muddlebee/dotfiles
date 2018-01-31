#bash customize
PROMPT_DIRTRIM=1

GIT_PROMPT_ONLY_IN_REPO=1
  source ~/.bash-git-prompt/gitprompt.sh

#to fetch automatically
#git settings
function fetch()
{
    if [ -e /Scripts/fetchmaster.sh ]
    then
        bash Scripts/fetchmaster.sh 
    fi
}
