#!/bin/zsh
# get current branch in git repo
parse_git_branch() {
  BRANCH=`git branch --show-current 2> /dev/null`
  if [ ! ${BRANCH} = "" ]
  then
    COUNT=$(git status --short | wc -l)
    DISPLAY_COUNT=$([ "$COUNT" -ne "0" ] && echo $COUNT)
    STAT=`parse_git_dirty`
    echo "%B%F{cyan}(${BRANCH}%f%F{yellow}${STAT}${DISPLAY_COUNT}%f%F{cyan})%f%b"
  else
    echo ""
  fi
}

# get current status of git repo
parse_git_dirty() {
  local git_status=`git status 2>&1 | tee`
  local dirty=`echo -n "${git_status}" 2> /dev/null | grep "modified:" &> /dev/null; echo "$?"`
  local untracked=`echo -n "${git_status}" 2> /dev/null | grep "Untracked files" &> /dev/null; echo "$?"`
  local ahead=`echo -n "${git_status}" 2> /dev/null | grep "Your branch is ahead of" &> /dev/null; echo "$?"`
  local newfile=`echo -n "${git_status}" 2> /dev/null | grep "new file:" &> /dev/null; echo "$?"`
  local renamed=`echo -n "${git_status}" 2> /dev/null | grep "renamed:" &> /dev/null; echo "$?"`
  local deleted=`echo -n "${git_status}" 2> /dev/null | grep "deleted:" &> /dev/null; echo "$?"`
  local bits=''
  [ "${renamed}" = "0" ] && bits="r${bits}"
  [ "${ahead}" = "0" ] && bits=">${bits}"
  [ "${newfile}" = "0" ] && bits="+${bits}"
  [ "${untracked}" = "0" ] && bits="?${bits}"
  [ "${deleted}" = "0" ] && bits="x${bits}"
  [ "${dirty}" = "0" ] && bits="*${bits}"
  [ ! "${bits}" = "" ] && echo "${bits}" || echo ""
}

