# for rbenv brokering of ruby programs
eval "$(rbenv init -)"

HOME=/Users/rcrelia

export PATH=$HOME/bin:$HOME/.rbenv/shims:$HOME/.rbenv/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

if [ -d ~/.bashrc.d ]; then
  for myfile in `ls ~/.bashrc.d/bashrc.*` ; do
    . ${myfile}
  done
fi

