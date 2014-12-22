# for rbenv brokering of ruby programs
eval "$(rbenv init -)"

if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

if [ -d ~/.bashrc.d ]; then
  for myfile in `ls ~/.bashrc.d/bashrc.*` ; do
    . ${myfile}
  done
fi

