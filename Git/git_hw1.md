###
### Задача 1. Работа с локальным репозиторием
###
###  1. Создать локальный репозиторий "git-lesson"
###

[guest1@localhost Git]$ git init git-lesson
[guest1@localhost Git]$ cd git-lesson/
[guest1@localhost git-lesson]$ git config --global user.name "Guest1"
[guest1@localhost git-lesson]$ git config --global user.email "guest1@noreply"

###
###  2. Создать пустой файл README.md и закоммитить изменения.
###

[guest1@localhost git-lesson]$ touch README.md
[guest1@localhost git-lesson]$ git add README.md
[guest1@localhost git-lesson]$ git commit -m "Add README.md"
[master 34b4488] Add README.md
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 README.md
 
###
###  3. Создать дополнительную ветку "feat1-add-readme", добавить в файл README.md немного текста. Изменения закоммитить.
###

[guest1@localhost git-lesson]$ git checkout -b feat1-add-readme
Switched to a new branch 'feat1-add-readme'
[guest1@localhost git-lesson]$ echo "1-st message" >> README.md
[guest1@localhost git-lesson]$ git status
# On branch feat1-add-readme
# Changes not staged for commit:
#   (use "git add <file>..." to update what will be committed)
#   (use "git checkout -- <file>..." to discard changes in working directory)
#
#	modified:   README.md
#
no changes added to commit (use "git add" and/or "git commit -a")
[guest1@localhost git-lesson]$ git add README.md 
[guest1@localhost git-lesson]$ git commit -m "1-st message to README"
[feat1-add-readme ccbc523] 1-st message to README
 1 file changed, 1 insertion(+)

###
###  4. Переключиться обратно на "master" ветку и так же добавить в README.md немного другого текста
###

[guest1@localhost git-lesson]$ git checkout master
Switched to branch 'master'
[guest1@localhost git-lesson]$ echo "1-st MASTER message" >> README.md

###
###  5. Смержить изменения из "feat1-add-readme" в "master" ветку так, чтобы сохранились изменения только из "feat1-add-readme" ветки
###

[guest1@localhost git-lesson]$ git stash save "Save master modified README"
Saved working directory and index state On master: Save master modified README
HEAD is now at 34b4488 Add README.md
[guest1@localhost git-lesson]$ git merge feat1-add-readme
Updating 34b4488..ccbc523
Fast-forward
 README.md | 1 +
 1 file changed, 1 insertion(+)
[guest1@localhost git-lesson]$ cat README.md 
1-st message

###
###  6. Переключиться обратно на "feat1-add-readme" ветку, создать файл temp_file и закоммитить изменения
###

[guest1@localhost git-lesson]$ git checkout feat1-add-readme
Switched to branch 'feat1-add-readme'
[guest1@localhost git-lesson]$ touch tmp_file
[guest1@localhost git-lesson]$ git add tmp_file
[guest1@localhost git-lesson]$ git commit -m "Add tmp_file"
[feat1-add-readme 55b850d] Add tmp_file
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 tmp_file

###
###  7. Отменить изменения, вносимые первым коммитом ветки "feat1-add-readme"
###

[guest1@localhost git-lesson]$ git log
commit 55b850d77f5cd8fff61787b51c548647a078ef90
Author: Guest1 <guest1@noreply>
Date:   Wed Mar 30 20:16:20 2022 +0500

    Add tmp_file

commit ccbc52377936d21e084cc45d6463ad9f0e7f6dd6
Author: Guest1 <guest1@noreply>
Date:   Wed Mar 30 20:00:22 2022 +0500

    1-st message to README

commit 34b44887d5e6a268962a4459f7c4105a74737072
Author: Guest1 <guest1@noreply>
Date:   Wed Mar 30 19:54:06 2022 +0500

    Add README.md
[guest1@localhost git-lesson]$ git checkout ccbc52377936d21e084cc45d6463ad9f0e7f6dd6
Note: checking out 'ccbc52377936d21e084cc45d6463ad9f0e7f6dd6'.

You are in 'detached HEAD' state. You can look around, make experimental
changes and commit them, and you can discard any commits you make in this
state without impacting any branches by performing another checkout.

If you want to create a new branch to retain commits you create, you may
do so (now or later) by using -b with the checkout command again. Example:

  git checkout -b new_branch_name

HEAD is now at ccbc523... 1-st message to README

[guest1@localhost git-lesson]$ ls
README.md


