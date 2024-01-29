
# Autobackup of my dotfiles 

These are the steps to use git bare repositories to keep an auto-updating backup of all your dotfiles. These Instructions are divided into two parts:

- Setting up the git bare repository.
- Recovering from a git bare repository.


## Setting up the git bare repository

1. Create a git bare repository in a "dotfiles" folder in the home directory.

```bash
git init --bare $HOME/.dotfiles
```

2. Add an alias to your shell config (I am currently using Fish)

```bash 
alias dfbu='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```


3. Reload your shell (Type fish or restart your terminal)

4. Run the following command to make sure you don't get harassed by untracked files:

```bash
dfbu config --local status.showUntrackedFiles no
```


And that's it. Now you can start using the normal git command like add, commit, etc. to handle the files you want to back up from any directory.


## Installing your dotfiles on a new system or migrating this setup.

1. Prior to installing/recovery, make sure the alias you made above has been committed to the shell config file.

```bash
alias dfbu='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

2. Make sure your source repo ignores the folder where you'll clone it, to avoid any recursion problems.i.e. Add a an entry "dotfiles" (without quotes) to a file named ".gitignore" (without quotes). This .gitignore file will be placed in the \$HOME directory.

3. Now clone your bare repo in a ".dotfiles" folder of your \$HOME directory.

```bash
git clone --bare <insert-repo-url-here> $HOME/.dotfiles
```

4. Define the alias dfbu in your current shell (of your new system)

```bash
alias dfbu='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

5. Checkout the actual content from the bare repo to your $HOME:

```bash
dfbu checkout
```
<!--Confirm if it is "dfbu checkout or "config checkout" in a vm-->

6. The above message might fail with a message like:

```bash
error: The following untracked working tree files would be overwritten by checkout:
    .bashrc
    .gitignore
Please move or remove them before you can switch branches.
Aborting
``` 


This is because your \$HOME folder might already have some stock configuration files which would be overwritten by Git. The solution is simple: back up the files if you care about them, remove them if you don't care. A rough shortcut is provided below to move all the offending files automatically to a backup folder:

```bash
mkdir -p .config-backup && \
config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} .config-backup/{}
```

Now rerun step 5.

7. Run the following command to make sure you don't get harassed by untracked files:

```bash
dfbu config --local status.showUntrackedFiles no
```

8. That is it. You can now continue using your normal git commands using the dfbu alias as you have been doing previously. GG WP. Bye.



(This method has been an adaptation of the mothod shown in the following article: https://www.atlassian.com/git/tutorials/dotfiles)


