sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s $(which zsh)
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
sed -i 's/ZSH-THEME="robbyrussel"/ZSH_THEME="powerlevel9k/powerlevel9k"/g' ~/.zshrc
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
sed -i '/plugins=(/a \ \ zsh-autosuggestions' ~/.zshrc
sed -i '/plugins=(rails/ { N; d; }' ~/.zshrc
