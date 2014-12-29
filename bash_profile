# for rbenv brokering of ruby programs
eval "$(rbenv init -)"

export PATH=/Users/rcrelia/bin:/Users/rcrelia/.rbenv/shims:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

if [ -d ~/.bashrc.d ]; then
  for myfile in `ls ~/.bashrc.d/bashrc.*` ; do
    . ${myfile}
  done
fi

