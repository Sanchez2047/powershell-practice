#declare variables
$GitHubUsername='Sanchez2047'
$PracticeRepoDir='$powershell-practice'
$CommitMessage='Auto committed from auto-committing-setup.ps1!'

#fork and lcone this repo in the powershell-studio directory
git clone "https://github.com/$GitHubUsername/powershell-practice" $PracticeRepoDir

# 5. Copy the auto-committing-setup.ps1 script (by its absolute path) into the cloned repo directory
cp $PSCommandPath $PracticeRepoDir

# 6. Change into the cloned directory ($PracticeRepoDir)
cd $PracticeRepoDir

#7. Add the new script file in the cloned directory to git staging
git add .

#8. Commit the changes to the repo using the message variable ($CommitMessage)
git commit -m "$CommitMessage"

#9. Push the local git history back to your forked repo
git push

