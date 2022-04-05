###
### Задача 2. Работа с удаленным репозиторием
###
###
###  1. Создать пустой репозиторий в GitHub "git-lesson".
### 

###
### 2. Сделать этот репозиторий удаленным для локального репозитория из первой задачи
###

[guest1@localhost git-lesson]$ git remote add origin git@github.com:MikhYur1991/git-lesson.git
[guest1@localhost git-lesson]$ git branch -M main
[guest1@localhost git-lesson]$ git push -u origin main
The authenticity of host 'github.com (140.82.121.4)' can't be established.
ECDSA key fingerprint is SHA256:p2QAMXNIC1TJYWeIOttrVc98/R1BUFWu3/LiyKgUfQM.
ECDSA key fingerprint is MD5:7b:99:81:1e:4c:91:a5:0d:5a:2e:2e:80:13:3f:24:ca.
Are you sure you want to continue connecting (yes/no)? yes
Warning: Permanently added 'github.com,140.82.121.4' (ECDSA) to the list of known hosts.
Counting objects: 10, done.
Compressing objects: 100% (4/4), done.
Writing objects: 100% (10/10), 802 bytes | 0 bytes/s, done.
Total 10 (delta 0), reused 0 (delta 0)
To git@github.com:MikhYur1991/git-lesson.git
 * [new branch]      main -> main
Branch main set up to track remote branch main from origin.

###
###  3. Отправить изменения из всех веток в "git-lesson" репозиторий
###

[guest1@localhost git-lesson]$ git push --all
Warning: Permanently added the ECDSA host key for IP address '140.82.121.3' to the list of known hosts.
Counting objects: 4, done.
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 271 bytes | 0 bytes/s, done.
Total 3 (delta 0), reused 0 (delta 0)
remote: 
remote: Create a pull request for 'feat1-add-readme' on GitHub by visiting:
remote:      https://github.com/MikhYur1991/git-lesson/pull/new/feat1-add-readme
remote: 
To git@github.com:MikhYur1991/git-lesson.git
 * [new branch]      feat1-add-readme -> feat1-add-readme

###
###  4. Заменить содержимое README.md в ветке "feat1-add-readme" строкой "Hello Github", закоммитить и отправить в "git-lesson" репо
###

[guest1@localhost git-lesson]$ echo "Hello Github" > README.md
[guest1@localhost git-lesson]$ git add README.md
[guest1@localhost git-lesson]$ git commit -m "Put Hello Github to README"
[feat1-add-readme b4c9b30] Put Hello Github to README
 1 file changed, 1 insertion(+), 1 deletion(-)
[guest1@localhost git-lesson]$ git push origin
Counting objects: 5, done.
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 298 bytes | 0 bytes/s, done.
Total 3 (delta 0), reused 0 (delta 0)
To git@github.com:MikhYur1991/git-lesson.git
   55b850d..b4c9b30  feat1-add-readme -> feat1-add-readme

###
###  5. Сделать Pull-Request из ветки "feat1-add-readme" в "master" и добавить меня (@vauboy) ревьювером
###


