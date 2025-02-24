# How to Install

Get the [Caskaydia Cove Mono][https://www.nerdfonts.com/] nerd font and download onto your device.

Then run the install script by running `./install.sh` in the `~/nvimrc` directory.

# Troubleshooting

<details>
  <summary>My nav bar is not displaying correctly</summary>
  <br>

  > Check that you have the correct name of the oh-my-posh theme that you want in the `~/nvimrc/powerline.bash` file. If it is correct, then check that it is in the `~/.poshthemes/` folder.
</details>

<details>
  <summary>I am getting an <code>OSCYANK</code> issue</summary>
  <br>

  > In `.config/nvim/editing.vim`, change line 10 to
  > ```
  > autocmd TextYankPost * if v:event.operator is 'y' && v:event.regname is '' | execute 'OSCYankRegister "' | endif
  > ```
</details>

<details>
  <summary>I am getting a <code>[coc.nvim] "node" is not executable</code> issue</summary>
  <br>

  > Run `nvm which current` and see if there is an `nvm` version currently installed. If not, follow the on-screen directions and run `nvm ls-remote` and install the version you want. Then run `nvm alias default node`.
  >
  > Then, running `nvm current` should give you the version you just installed and running `nvm which current` should give you the path.
</details>

<details>
  <summary>I'm getting a <code>-bash: eval:</code> related error on Mac</summary>
  <br>

  > This is likely due to an outdated bash (since Mac stopped supporting bash). To fix this, run `brew install bash`.
  >
  > Your new bash location should be `/opt/homebrew/bin/bash`. You should then add this path to your `~/.bashrc` by adding the line
  > ```
  > export PATH=/opt/homebrew/bin/bash:$PATH
  > ```
  > Then you want to add `/opt/homebrew/bin/bash` to your `/etc/shells/` file and run `chsh -s /opt/homebrew/bin/bash`.
  >
  > If this does not work upon restarting your terminal or `source ~/.bashrc`, then in iTerm2 go to "Profiles > Open Profiles > Default Profile > Edit Profile" and under "General > Profiles > Command" change "Login Shell" to "Command" and input `/opt/homebrew/bin/bash`.
</details>

<details>
  <summary>I want to set the colors of my folders and files to be different</summary>
  <br>

  > You can copy the following line of code into your `~/.bashrc` to color your folders + symlinks or edit it to your standards:
  > ```
  > export CLICOLOR=1
  > export LSCOLORS=ExFxBxDxCxegedabagacad
  > bind 'set colored-stats on'
  > alias ls='ls --color=auto -Aep'
  > ```
</details>

<details>
  <summary>My tmux isn't displaying correctly</summary>
  <br>

  > In your `~/.bash_profile`, add `source ~/.bashrc`.
</details>
