Step 1: Alice creates a new project and hosts it on GitHub.

triyono@develop:/media/umum/praxis-tugas$ mkdir rhymes
triyono@develop:/media/umum/praxis-tugas$ cd rhymes/
triyono@develop:/media/umum/praxis-tugas/rhymes$ git init
Initialized empty Git repository in /media/umum/praxis-tugas/rhymes/.git/
triyono@develop:/media/umum/praxis-tugas/rhymes$ touch README.txt
triyono@develop:/media/umum/praxis-tugas/rhymes$ git add README.txt 
triyono@develop:/media/umum/praxis-tugas/rhymes$ git commit -m 'First commit.'
[master (root-commit) 866dcf8] First commit.
1 file changed, 0 insertions(+), 0 deletions(-)
create mode 100644 README.txt
triyono@develop:/media/umum/praxis-tugas/rhymes$ echo 'This repo is a collection of my favorite nursery rhymes.' >> README.txt 
triyono@develop:/media/umum/praxis-tugas/rhymes$ git status
On branch master
Changes not staged for commit:
(use "git add <file>..." to update what will be committed)
(use "git checkout -- <file>..." to discard changes in working directory)

    modified:   README.txt

no changes added to commit (use "git add" and/or "git commit -a")
triyono@develop:/media/umum/praxis-tugas/rhymes$ git diff
diff --git a/README.txt b/README.txt
index e69de29..c83e022 100644
--- a/README.txt
+++ b/README.txt
@@ -0,0 +1 @@
+This repo is a collection of my favorite nursery rhymes.
triyono@develop:/media/umum/praxis-tugas/rhymes$ git add README.txt
triyono@develop:/media/umum/praxis-tugas/rhymes$ git commit -m 'Added project overview to README.txt'
[master faf05ef] Added project overview to README.txt
 1 file changed, 1 insertion(+)
triyono@develop:/media/umum/praxis-tugas/rhymes$ wget https://www.acquia.com/sites/default/files/blog/all-around-the-mulberry-bush.txt
--2019-10-21 09:27:07-- https://www.acquia.com/sites/default/files/blog/all-around-the-mulberry-bush.txt
Resolving www.acquia.com (www.acquia.com)... 104.16.118.45, 104.16.117.45, 2606:4700::6810:762d, ...
Connecting to www.acquia.com (www.acquia.com)|104.16.118.45|:443... connected.
HTTP request sent, awaiting response... 404 Not Found
2019-10-21 09:27:09 ERROR 404: Not Found.

triyono@develop:/media/umum/praxis-tugas/rhymes\$ wget https://www.acquia.com/sites/default/files/blog/jack-and-jill.txt
--2019-10-21 09:27:09-- https://www.acquia.com/sites/default/files/blog/jack-and-jill.txt
Resolving www.acquia.com (www.acquia.com)... 104.16.118.45, 104.16.117.45, 2606:4700::6810:762d, ...
Connecting to www.acquia.com (www.acquia.com)|104.16.118.45|:443... connected.
HTTP request sent, awaiting response... 404 Not Found
2019-10-21 09:27:10 ERROR 404: Not Found.

triyono@develop:/media/umum/praxis-tugas/rhymes\$ wget https://www.acquia.com/sites/default/files/blog/old-mother-hubbard.txt
--2019-10-21 09:27:10-- https://www.acquia.com/sites/default/files/blog/old-mother-hubbard.txt
Resolving www.acquia.com (www.acquia.com)... 104.16.118.45, 104.16.117.45, 2606:4700::6810:762d, ...
Connecting to www.acquia.com (www.acquia.com)|104.16.118.45|:443... connected.
HTTP request sent, awaiting response... 404 Not Found
2019-10-21 09:27:11 ERROR 404: Not Found.

triyono@develop:/media/umum/praxis-tugas/rhymes\$ wget https://www.acquia.com/sites/default/files/blog/twinkle-twinkle.txt
--2019-10-21 09:27:11-- https://www.acquia.com/sites/default/files/blog/twinkle-twinkle.txt
Resolving www.acquia.com (www.acquia.com)... 104.16.118.45, 104.16.117.45, 2606:4700::6810:762d, ...
Connecting to www.acquia.com (www.acquia.com)|104.16.118.45|:443... connected.
HTTP request sent, awaiting response... 404 Not Found
2019-10-21 09:27:13 ERROR 404: Not Found.

triyono@develop:/media/umum/praxis-tugas/rhymes\$ wget https://www.acquia.com/sites/default/files/blog/hokey-pokey.txt
--2019-10-21 09:27:16-- https://www.acquia.com/sites/default/files/blog/hokey-pokey.txt
Resolving www.acquia.com (www.acquia.com)... 104.16.118.45, 104.16.117.45, 2606:4700::6810:762d, ...
Connecting to www.acquia.com (www.acquia.com)|104.16.118.45|:443... connected.
HTTP request sent, awaiting response... 404 Not Found
2019-10-21 09:27:17 ERROR 404: Not Found.

triyono@develop:/media/umum/praxis-tugas/rhymes\$ wget https://github.com/k-milcaster/carisma/blob/master/BDD/Melihat%20Antrian%20Pasien%20(Adinda)/Melihat%20Antrian%20Pasien.txt
bash: syntax error near unexpected token `(' triyono@develop:/media/umum/praxis-tugas/rhymes$ wget https://github.com/k-milcaster/carisma/blob/master/BDD/Server%20(Franz)/Menjalankan%20Fungsi%20Update%20(gagal).txt bash: syntax error near unexpected token`('
triyono@develop:/media/umum/praxis-tugas/rhymes\$ wget http://eprints.akakom.ac.id/3010/9/Langkah-langkah%20menjalankan%20Aplikasi.txt
--2019-10-21 09:31:13-- http://eprints.akakom.ac.id/3010/9/Langkah-langkah%20menjalankan%20Aplikasi.txt
Resolving eprints.akakom.ac.id (eprints.akakom.ac.id)... 103.98.239.253
Connecting to eprints.akakom.ac.id (eprints.akakom.ac.id)|103.98.239.253|:80... connected.
HTTP request sent, awaiting response... 200 OK
Length: 2163 (2,1K) [text/plain]
Saving to: ‘Langkah-langkah menjalankan Aplikasi.txt’

Langkah-langkah men 100%[===================>] 2,11K --.-KB/s in 0s

2019-10-21 09:31:13 (203 MB/s) - ‘Langkah-langkah menjalankan Aplikasi.txt’ saved [2163/2163]

triyono@develop:/media/umum/praxis-tugas/rhymes\$ wget http://repository.lppm.unila.ac.id/2274/2/Intan-Fajar-Ningtiyas-1.1.txt
--2019-10-21 09:32:08-- http://repository.lppm.unila.ac.id/2274/2/Intan-Fajar-Ningtiyas-1.1.txt
Resolving repository.lppm.unila.ac.id (repository.lppm.unila.ac.id)... 103.3.46.23
Connecting to repository.lppm.unila.ac.id (repository.lppm.unila.ac.id)|103.3.46.23|:80... connected.
HTTP request sent, awaiting response... 200 OK
Length: 9168 (9,0K) [text/plain]
Saving to: ‘Intan-Fajar-Ningtiyas-1.1.txt’

Intan-Fajar-Ningtiy 100%[===================>] 8,95K --.-KB/s in 0,07s

2019-10-21 09:32:11 (124 KB/s) - ‘Intan-Fajar-Ningtiyas-1.1.txt’ saved [9168/9168]

triyono@develop:/media/umum/praxis-tugas/rhymes$ git add .
triyono@develop:/media/umum/praxis-tugas/rhymes$ git commit -m 'menambah Langkah2--.txt, menambah Intan-Fajar---.txt'
[master 8dd6053] menambah Langkah2--.txt, menambah Intan-Fajar---.txt
2 files changed, 42 insertions(+)
create mode 100644 Intan-Fajar-Ningtiyas-1.1.txt
create mode 100644 Langkah-langkah menjalankan Aplikasi.txt
triyono@develop:/media/umum/praxis-tugas/rhymes\$ git log
commit 8dd60534c6ecfc5370aa116418b5ad3651a1ab3c (HEAD -> master)
Author: triyono <yono.tri@gmail.com>
Date: Mon Oct 21 09:33:21 2019 +0700

    menambah Langkah2--.txt, menambah Intan-Fajar---.txt

commit faf05effc418e1942f725c23f6834af7fd79bd3c
Author: triyono <yono.tri@gmail.com>
Date: Mon Oct 21 09:26:54 2019 +0700

    Added project overview to README.txt

commit 866dcf8d8273a0ab22bc6b1f36f20fcec188d119
Author: triyono <yono.tri@gmail.com>
Date: Mon Oct 21 09:25:29 2019 +0700

    First commit.

triyono@develop:/media/umum/praxis-tugas/rhymes$ git log --oneline
8dd6053 (HEAD -> master) menambah Langkah2--.txt, menambah Intan-Fajar---.txt
faf05ef Added project overview to README.txt
866dcf8 First commit.
triyono@develop:/media/umum/praxis-tugas/rhymes$ git log -p
commit 8dd60534c6ecfc5370aa116418b5ad3651a1ab3c (HEAD -> master)
Author: triyono <yono.tri@gmail.com>
Date: Mon Oct 21 09:33:21 2019 +0700

    menambah Langkah2--.txt, menambah Intan-Fajar---.txt

diff --git a/Intan-Fajar-Ningtiyas-1.1.txt b/Intan-Fajar-Ningtiyas-1.1.txt
new file mode 100644
index 0000000..d4e42c6
Binary files /dev/null and b/Intan-Fajar-Ningtiyas-1.1.txt differ
diff --git a/Langkah-langkah menjalankan Aplikasi.txt b/Langkah-langkah menjalankan Aplikasi.txt
new file mode 100644
index 0000000..e2b80bf
--- /dev/null
+++ b/Langkah-langkah menjalankan Aplikasi.txt  
@@ -0,0 +1,42 @@
+1. Instal Databases MySQL (AppServ)^M

-       - copykan database skripsi ke polder data pada MySQL^M
  +^M
  +2. Instal Aplikasi Apotek Sehat^M
  +^M
  +3. Instal Driver MyODBC (untuk koneksi database dengan Aplikasi Apotek Sehat)^M

triyono@develop:/media/umum/praxis-tugas/rhymes$ git remote add origin https://github.com/triyono777/rhymes.git
triyono@develop:/media/umum/praxis-tugas/rhymes$ git push -u origin master
Username for 'https://github.com': triyono777
Password for 'https://triyono777@github.com':
Counting objects: 10, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (7/7), done.
Writing objects: 100% (10/10), 10.73 KiB | 2.68 MiB/s, done.
Total 10 (delta 0), reused 0 (delta 0)
To https://github.com/triyono777/rhymes.git

- [new branch] master -> master
  Branch 'master' set up to track remote branch 'master' from 'origin'.
  triyono@develop:/media/umum/praxis-tugas/rhymes\$ wget https://github.com/bryanhirsch/rhymes/blob/master/all-around-the-mulberry-bush.txt
  --2019-10-21 09:42:34-- https://github.com/bryanhirsch/rhymes/blob/master/all-around-the-mulberry-bush.txt
  Resolving github.com (github.com)... 13.250.177.223
  Connecting to github.com (github.com)|13.250.177.223|:443... connected.
  HTTP request sent, awaiting response... 200 OK
  Length: unspecified [text/html]
  Saving to: ‘all-around-the-mulberry-bush.txt’

all-around-the-mulb [ <=> ] 69,43K 227KB/s in 0,3s

2019-10-21 09:42:35 (227 KB/s) - ‘all-around-the-mulberry-bush.txt’ saved [71093]

triyono@develop:/media/umum/praxis-tugas/rhymes\$ wget https://github.com/bryanhirsch/rhymes/blob/master/hickory-dickory-dock.txt
--2019-10-21 09:42:42-- https://github.com/bryanhirsch/rhymes/blob/master/hickory-dickory-dock.txt
Resolving github.com (github.com)... 52.74.223.119
Connecting to github.com (github.com)|52.74.223.119|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [text/html]
Saving to: ‘hickory-dickory-dock.txt’

hickory-dickory-doc [ <=> ] 64,16K 135KB/s in 0,5s

2019-10-21 09:42:43 (135 KB/s) - ‘hickory-dickory-dock.txt’ saved [65703]

triyono@develop:/media/umum/praxis-tugas/rhymes\$ wget https://github.com/bryanhirsch/rhymes/blob/master/hokey-pokey.txt
--2019-10-21 09:42:49-- https://github.com/bryanhirsch/rhymes/blob/master/hokey-pokey.txt
Resolving github.com (github.com)... 52.74.223.119
Connecting to github.com (github.com)|52.74.223.119|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [text/html]
Saving to: ‘hokey-pokey.txt’

hokey-pokey.txt [ <=> ] 66,15K 416KB/s in 0,2s

2019-10-21 09:42:50 (416 KB/s) - ‘hokey-pokey.txt’ saved [67741]

triyono@develop:/media/umum/praxis-tugas/rhymes\$ wget https://github.com/bryanhirsch/rhymes/blob/master/jack-and-jill.txt
--2019-10-21 09:42:59-- https://github.com/bryanhirsch/rhymes/blob/master/jack-and-jill.txt
Resolving github.com (github.com)... 52.74.223.119
Connecting to github.com (github.com)|52.74.223.119|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [text/html]
Saving to: ‘jack-and-jill.txt’

jack-and-jill.txt [ <=> ] 65,36K 134KB/s in 0,5s

2019-10-21 09:43:00 (134 KB/s) - ‘jack-and-jill.txt’ saved [66924]

triyono@develop:/media/umum/praxis-tugas/rhymes\$ wget https://github.com/bryanhirsch/rhymes/blob/master/old-mother-hubbard.txt
--2019-10-21 09:43:11-- https://github.com/bryanhirsch/rhymes/blob/master/old-mother-hubbard.txt
Resolving github.com (github.com)... 52.74.223.119
Connecting to github.com (github.com)|52.74.223.119|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [text/html]
Saving to: ‘old-mother-hubbard.txt’

old-mother-hubbard. [ <=> ] 69,79K --.-KB/s in 0,07s

2019-10-21 09:43:12 (1,03 MB/s) - ‘old-mother-hubbard.txt’ saved [71460]

triyono@develop:/media/umum/praxis-tugas/rhymes\$ wget https://github.com/bryanhirsch/rhymes/blob/master/roses-are-red.txt
--2019-10-21 09:43:19-- https://github.com/bryanhirsch/rhymes/blob/master/roses-are-red.txt
Resolving github.com (github.com)... 52.74.223.119
Connecting to github.com (github.com)|52.74.223.119|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [text/html]
Saving to: ‘roses-are-red.txt’

roses-are-red.txt [ <=> ] 64,54K --.-KB/s in 0,09s

2019-10-21 09:43:20 (705 KB/s) - ‘roses-are-red.txt’ saved [66087]

triyono@develop:/media/umum/praxis-tugas/rhymes\$ wget https://github.com/bryanhirsch/rhymes/blob/master/twinkle-twinkle.txt
--2019-10-21 09:43:28-- https://github.com/bryanhirsch/rhymes/blob/master/twinkle-twinkle.txt
Resolving github.com (github.com)... 52.74.223.119
Connecting to github.com (github.com)|52.74.223.119|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [text/html]
Saving to: ‘twinkle-twinkle.txt’

twinkle-twinkle.txt [ <=> ] 64,29K 137KB/s in 0,5s

2019-10-21 09:43:29 (137 KB/s) - ‘twinkle-twinkle.txt’ saved [65830]

triyono@develop:/media/umum/praxis-tugas/rhymes$ git add .
triyono@develop:/media/umum/praxis-tugas/rhymes$ git commit " added all-around-the-mulberry-bush.txt

> hickory-dickory-dock.txt
> hokey-pokey.txt
> jack-and-jill.txt
> old-mother-hubbard.txt
> roses-are-red.txt
> twinkle-twinkle.txt"
> error: pathspec ' added all-around-the-mulberry-bush.txt
> hickory-dickory-dock.txt
> hokey-pokey.txt
> jack-and-jill.txt
> old-mother-hubbard.txt
> roses-are-red.txt
> twinkle-twinkle.txt' did not match any file(s) known to git.
> triyono@develop:/media/umum/praxis-tugas/rhymes$ git commit " added all-around-the-mulberry-bush.txt,hickory-dickory-dock.txt ,hokey-pokey.txt,jack-and-jill.txt,old-mother-hubbard.txt,roses-are-red.txt ,twinkle-twinkle.txt"
error: pathspec ' added all-around-the-mulberry-bush.txt,hickory-dickory-dock.txt ,hokey-pokey.txt,jack-and-jill.txt,old-mother-hubbard.txt,roses-are-red.txt ,twinkle-twinkle.txt' did not match any file(s) known to git.
triyono@develop:/media/umum/praxis-tugas/rhymes$ git commit -m " added all-around-the-mulberry-bush.txt,hickory-dickory-dock.txt ,hokey-pokey.txt,jack-and-jill.txt,old-mother-hubbard.txt,roses-are-red.txt ,twinkle-twinkle.txt"
> [master 2192eae] added all-around-the-mulberry-bush.txt,hickory-dickory-dock.txt ,hokey-pokey.txt,jack-and-jill.txt,old-mother-hubbard.txt,roses-are-red.txt ,twinkle-twinkle.txt
> 7 files changed, 6474 insertions(+)
> create mode 100644 all-around-the-mulberry-bush.txt
> create mode 100644 hickory-dickory-dock.txt
> create mode 100644 hokey-pokey.txt
> create mode 100644 jack-and-jill.txt
> create mode 100644 old-mother-hubbard.txt
> create mode 100644 roses-are-red.txt
> create mode 100644 twinkle-twinkle.txt
> triyono@develop:/media/umum/praxis-tugas/rhymes$ git push origin master
Counting objects: 9, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (9/9), done.
Writing objects: 100% (9/9), 23.62 KiB | 2.36 MiB/s, done.
Total 9 (delta 6), reused 0 (delta 0)
remote: Resolving deltas: 100% (6/6), done.
To https://github.com/triyono777/rhymes.git
   8dd6053..2192eae  master -> master
triyono@develop:/media/umum/praxis-tugas/rhymes$ git status
> On branch master
> Your branch is up to date with 'origin/master'.

Changes not staged for commit:
(use "git add/rm <file>..." to update what will be committed)
(use "git checkout -- <file>..." to discard changes in working directory)

    deleted:    hickory-dickory-dock.txt

no changes added to commit (use "git add" and/or "git commit -a")
triyono@develop:/media/umum/praxis-tugas/rhymes$ git add .
triyono@develop:/media/umum/praxis-tugas/rhymes$ git commit -m "hapus hickory-dickory - mencoba ikut tutorial"
[master a08153d] hapus hickory-dickory - mencoba ikut tutorial
1 file changed, 882 deletions(-)
delete mode 100644 hickory-dickory-dock.txt
triyono@develop:/media/umum/praxis-tugas/rhymes$ git push origin master
Counting objects: 2, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (2/2), done.
Writing objects: 100% (2/2), 241 bytes | 241.00 KiB/s, done.
Total 2 (delta 1), reused 0 (delta 0)
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To https://github.com/triyono777/rhymes.git
   2192eae..a08153d  master -> master
triyono@develop:/media/umum/praxis-tugas/rhymes$

=======================================================================================================================================================
Step 2: Bob copies Alice's project, then submits some simple changes

triyono@develop:/media/umum/praxis-tugas/foldernya bob$ git clone https://github.com/triyonoyangbagus/rhymes.git
Cloning into 'rhymes'...
remote: Enumerating objects: 24, done.
remote: Counting objects: 100% (24/24), done.
remote: Compressing objects: 100% (14/14), done.
remote: Total 24 (delta 10), reused 21 (delta 7), pack-reused 0
Unpacking objects: 100% (24/24), done.
triyono@develop:/media/umum/praxis-tugas/foldernya bob$ cd rhymes/
triyono@develop:/media/umum/praxis-tugas/foldernya bob/rhymes$ git checkout -b hickory-dickory
Switched to a new branch 'hickory-dickory'
triyono@develop:/media/umum/praxis-tugas/foldernya bob/rhymes$ wget https://github.com/bryanhirsch/rhymes/blob/master/hickory-dickory-dock.txt
--2019-10-21 10:10:09-- https://github.com/bryanhirsch/rhymes/blob/master/hickory-dickory-dock.txt
Resolving github.com (github.com)... 13.229.188.59
Connecting to github.com (github.com)|13.229.188.59|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [text/html]
Saving to: ‘hickory-dickory-dock.txt’

hickory-dickory-doc [ <=> ] 64,16K --.-KB/s in 0,1s

2019-10-21 10:10:10 (658 KB/s) - ‘hickory-dickory-dock.txt’ saved [65703]

triyono@develop:/media/umum/praxis-tugas/foldernya bob/rhymes\$ git commit -m 'added hickory-dickory-dock.txt'
On branch hickory-dickory
Untracked files:
hickory-dickory-dock.txt

nothing added to commit but untracked files present
triyono@develop:/media/umum/praxis-tugas/foldernya bob/rhymes$ git add .
triyono@develop:/media/umum/praxis-tugas/foldernya bob/rhymes$ git commit -m 'added hickory-dickory-dock.txt'
[hickory-dickory 53e8eb2] added hickory-dickory-dock.txt
1 file changed, 882 insertions(+)
create mode 100644 hickory-dickory-dock.txt
triyono@develop:/media/umum/praxis-tugas/foldernya bob/rhymes$ git push origin hickory-dickory
To https://github.com/triyonoyangbagus/rhymes.git
 ! [rejected]        hickory-dickory -> hickory-dickory (non-fast-forward)
error: failed to push some refs to 'https://github.com/triyonoyangbagus/rhymes.git'
hint: Updates were rejected because the tip of your current branch is behind
hint: its remote counterpart. Integrate the remote changes (e.g.
hint: 'git pull ...') before pushing again.
hint: See the 'Note about fast-forwards' in 'git push --help' for details.
triyono@develop:/media/umum/praxis-tugas/foldernya bob/rhymes$ git remote -vorigin https://github.com/triyonoyangbagus/rhymes.git (fetch)
origin https://github.com/triyonoyangbagus/rhymes.git (push)
triyono@develop:/media/umum/praxis-tugas/foldernya bob/rhymes\$ git pull
There is no tracking information for the current branch.
Please specify which branch you want to merge with.
See git-pull(1) for details.

    git pull <remote> <branch>

If you wish to set tracking information for this branch you can do so with:

    git branch --set-upstream-to=origin/<branch> hickory-dickory

triyono@develop:/media/umum/praxis-tugas/foldernya bob/rhymes\$ git pull origin master
From https://github.com/triyonoyangbagus/rhymes

- branch master -> FETCH_HEAD
  Already up to date.
  triyono@develop:/media/umum/praxis-tugas/foldernya bob/rhymes$ git push origin hickory-dickory
To https://github.com/triyonoyangbagus/rhymes.git
 ! [rejected]        hickory-dickory -> hickory-dickory (non-fast-forward)
error: failed to push some refs to 'https://github.com/triyonoyangbagus/rhymes.git'
hint: Updates were rejected because the tip of your current branch is behind
hint: its remote counterpart. Integrate the remote changes (e.g.
hint: 'git pull ...') before pushing again.
hint: See the 'Note about fast-forwards' in 'git push --help' for details.
triyono@develop:/media/umum/praxis-tugas/foldernya bob/rhymes$

==================================================================================================
Step 3: Alice reviews and accepts Bob's simple changes

triyono@develop:/media/umum/praxis-tugas$ cd rhymes/
triyono@develop:/media/umum/praxis-tugas/rhymes$ git remote rename origin alice
triyono@develop:/media/umum/praxis-tugas/rhymes$ git remote add bob https://github.com/triyono777/rhymes.git
triyono@develop:/media/umum/praxis-tugas/rhymes$ git remote
alice
bob
triyono@develop:/media/umum/praxis-tugas/rhymes$ git remote -v
alice	https://github.com/triyono777/rhymes.git (fetch)
alice	https://github.com/triyono777/rhymes.git (push)
bob	https://github.com/triyono777/rhymes.git (fetch)
bob	https://github.com/triyono777/rhymes.git (push)
triyono@develop:/media/umum/praxis-tugas/rhymes$ git remote rename bob alice
fatal: remote alice already exists.
triyono@develop:/media/umum/praxis-tugas/rhymes$ git remote rename bob alice2
triyono@develop:/media/umum/praxis-tugas/rhymes$ git remote -v
alice https://github.com/triyono777/rhymes.git (fetch)
alice https://github.com/triyono777/rhymes.git (push)
alice2 https://github.com/triyono777/rhymes.git (fetch)
alice2 https://github.com/triyono777/rhymes.git (push)
triyono@develop:/media/umum/praxis-tugas/rhymes$ git remote add bob https://github.com/triyonoyangbagus/rhymes.git
triyono@develop:/media/umum/praxis-tugas/rhymes$ git remote -v
alice https://github.com/triyono777/rhymes.git (fetch)
alice https://github.com/triyono777/rhymes.git (push)
alice2 https://github.com/triyono777/rhymes.git (fetch)
alice2 https://github.com/triyono777/rhymes.git (push)
bob https://github.com/triyonoyangbagus/rhymes.git (fetch)
bob https://github.com/triyonoyangbagus/rhymes.git (push)
triyono@develop:/media/umum/praxis-tugas/rhymes\$ git fetch bob
remote: Enumerating objects: 4, done.
remote: Counting objects: 100% (4/4), done.
remote: Compressing objects: 100% (2/2), done.
remote: Total 3 (delta 1), reused 3 (delta 1), pack-reused 0
Unpacking objects: 100% (3/3), done.
From https://github.com/triyonoyangbagus/rhymes

- [new branch] hickory-dickory -> bob/hickory-dickory
- [new branch] master -> bob/master
  triyono@develop:/media/umum/praxis-tugas/rhymes\$ git branch -a
- master
  remotes/alice/master
  remotes/bob/hickory-dickory
  remotes/bob/master
  triyono@develop:/media/umum/praxis-tugas/rhymes$ git checkout -b hickory-dickory  bob/hickory-dickory 
Branch 'hickory-dickory' set up to track remote branch 'hickory-dickory' from 'bob'.
Switched to a new branch 'hickory-dickory'
triyono@develop:/media/umum/praxis-tugas/rhymes$ git diff master hickory-dickory
  diff --git a/hickory-dickory-dock.txt b/hickory-dickory-dock.txt
  new file mode 100644
  index 0000000..b84c05a
  --- /dev/null
  +++ b/hickory-dickory-dock.txt
  @@ -0,0 +1,882 @@

* - - - - - +<!DOCTYPE html> +<html lang="en">

- <head>
- <meta charset="utf-8">
- <link rel="dns-prefetch" href="https://github.githubassets.com">
- <link rel="dns-prefetch" href="https://avatars0.githubusercontent.com">
- <link rel="dns-prefetch" href="https://avatars1.githubusercontent.com">
- <link rel="dns-prefetch" href="https://avatars2.githubusercontent.com">
- <link rel="dns-prefetch" href="https://avatars3.githubusercontent.com">
- <link rel="dns-prefetch" href="https://github-cloud.s3.amazonaws.com">
- <link rel="dns-prefetch" href="https://user-images.githubusercontent.com/">
  triyono@develop:/media/umum/praxis-tugas/rhymes$ git log -l -p
  commit 2a37f440f41c0afa272500356ea9901a46d3a20b (HEAD -> hickory-dickory, bob/hickory-dickory)
  Author: triyono <yono.tri@gmail.com>
  Date:   Mon Oct 21 09:56:10 2019 +0700

      adde hickory-dickory.txt

commit a08153d5012c42417a5078ca8e0017ebd6c75257 (bob/master, alice/master, master)
Author: triyono <yono.tri@gmail.com>
Date: Mon Oct 21 09:53:49 2019 +0700

    hapus hickory-dickory - mencoba ikut tutorial

commit 2192eae14aa6ec9ff9b589680274509602799607
Author: triyono <yono.tri@gmail.com>
Date: Mon Oct 21 09:46:46 2019 +0700

     added all-around-the-mulberry-bush.txt,hickory-dickory-dock.txt ,hokey-pokey.txt,jack-and-jill.txt,old-mother-hubbard.txt,roses-are-red.txt ,twinkle-twinkle.txt

commit 8dd60534c6ecfc5370aa116418b5ad3651a1ab3c
triyono@develop:/media/umum/praxis-tugas/rhymes$ git checkout master
Switched to branch 'master'
Your branch is up to date with 'alice/master'.
triyono@develop:/media/umum/praxis-tugas/rhymes$ git merge hickory-dickory
Updating a08153d..2a37f44
Fast-forward
hickory-dickory-dock.txt | 882 +++++++++++++++++++++++++++++++++++++++++++++++
1 file changed, 882 insertions(+)
create mode 100644 hickory-dickory-dock.txt
triyono@develop:/media/umum/praxis-tugas/rhymes$ git branch -D hickory-dickory 
Deleted branch hickory-dickory (was 2a37f44).
triyono@develop:/media/umum/praxis-tugas/rhymes$

============================================================================================

Step 4: Bob makes lots of changes
Bob updates his repo, to get it up to date with Alice's

triyono@develop:/media/umum/praxis-tugas/foldernya bob/rhymes\$ git pull origin master
From https://github.com/triyonoyangbagus/rhymes

- branch master -> FETCH_HEAD
  Already up to date.
  triyono@develop:/media/umum/praxis-tugas/foldernya bob/rhymes$ git push origin hickory-dickory
To https://github.com/triyonoyangbagus/rhymes.git
 ! [rejected]        hickory-dickory -> hickory-dickory (non-fast-forward)
error: failed to push some refs to 'https://github.com/triyonoyangbagus/rhymes.git'
hint: Updates were rejected because the tip of your current branch is behind
hint: its remote counterpart. Integrate the remote changes (e.g.
hint: 'git pull ...') before pushing again.
hint: See the 'Note about fast-forwards' in 'git push --help' for details.
triyono@develop:/media/umum/praxis-tugas/foldernya bob/rhymes$ git remote rename origin bob
  triyono@develop:/media/umum/praxis-tugas/foldernya bob/rhymes$ git remote rename bob origin
triyono@develop:/media/umum/praxis-tugas/foldernya bob/rhymes$ git remote
  origin
  triyono@develop:/media/umum/praxis-tugas/foldernya bob/rhymes\$ clear

triyono@develop:/media/umum/praxis-tugas/foldernya bob/rhymes$ git remote rename origin bob
triyono@develop:/media/umum/praxis-tugas/foldernya bob/rhymes$ git remote add alice https://github.com/triyonoyangbagus/rhymes.git
triyono@develop:/media/umum/praxis-tugas/foldernya bob/rhymes$ git remote
alice
bob
triyono@develop:/media/umum/praxis-tugas/foldernya bob/rhymes$ git remote -valice https://github.com/triyonoyangbagus/rhymes.git (fetch)
alice https://github.com/triyonoyangbagus/rhymes.git (push)
bob https://github.com/triyonoyangbagus/rhymes.git (fetch)
bob https://github.com/triyonoyangbagus/rhymes.git (push)
triyono@develop:/media/umum/praxis-tugas/foldernya bob/rhymes$ git remote rename alice bob2
triyono@develop:/media/umum/praxis-tugas/foldernya bob/rhymes$ git remote add alice https://github.com/triyono777/rhymes.git
triyono@develop:/media/umum/praxis-tugas/foldernya bob/rhymes$ git remote -valice	https://github.com/triyono777/rhymes.git (fetch)
alice	https://github.com/triyono777/rhymes.git (push)
bob	https://github.com/triyonoyangbagus/rhymes.git (fetch)
bob	https://github.com/triyonoyangbagus/rhymes.git (push)
bob2	https://github.com/triyonoyangbagus/rhymes.git (fetch)
bob2	https://github.com/triyonoyangbagus/rhymes.git (push)
triyono@develop:/media/umum/praxis-tugas/foldernya bob/rhymes$ git remote update
Fetching bob
Fetching bob2
From https://github.com/triyonoyangbagus/rhymes

- [new branch] hickory-dickory -> bob2/hickory-dickory
- [new branch] master -> bob2/master
  Fetching alice
  From https://github.com/triyono777/rhymes
- [new branch] master -> alice/master
  triyono@develop:/media/umum/praxis-tugas/foldernya bob/rhymes$ git checkout master
Switched to branch 'master'
Your branch is up to date with 'bob/master'.
triyono@develop:/media/umum/praxis-tugas/foldernya bob/rhymes$ git merge alice/master
  Already up to date.
  triyono@develop:/media/umum/praxis-tugas/foldernya bob/rhymes$ git add .
triyono@develop:/media/umum/praxis-tugas/foldernya bob/rhymes$ git commit -m "perubahan banyak"
  [master 448d8a3] perubahan banyak
  5 files changed, 15 insertions(+)
  create mode 100644 perubahan banyak (3rd copy).txt
  create mode 100644 perubahan banyak (4th copy).txt
  create mode 100644 perubahan banyak (another copy).txt
  create mode 100644 perubahan banyak (copy).txt
  create mode 100644 perubahan banyak .txt
  triyono@develop:/media/umum/praxis-tugas/foldernya bob/rhymes$ git remote update
Fetching bob
Fetching bob2
Fetching alice
triyono@develop:/media/umum/praxis-tugas/foldernya bob/rhymes$ git checkout master
  Already on 'master'
  Your branch is ahead of 'bob/master' by 1 commit.
  (use "git push" to publish your local commits)
  triyono@develop:/media/umum/praxis-tugas/foldernya bob/rhymes$ git merge alice/master 
Already up to date.
triyono@develop:/media/umum/praxis-tugas/foldernya bob/rhymes$ git diff alice/master
  diff --git a/perubahan banyak (3rd copy).txt b/perubahan banyak (3rd copy).txt
  new file mode 100644
  index 0000000..44eced2
  --- /dev/null
  +++ b/perubahan banyak (3rd copy).txt  
  @@ -0,0 +1,3 @@
  +tambahan
  +ini buat perubahan yag dilakukan oleh bob, anggep saja berubahnya banyak

+
diff --git a/perubahan banyak (4th copy).txt b/perubahan banyak (4th copy).txt
new file mode 100644
index 0000000..44eced2
--- /dev/null
+++ b/perubahan banyak (4th copy).txt  
@@ -0,0 +1,3 @@
+tambahan
+ini buat perubahan yag dilakukan oleh bob, anggep saja berubahnya banyak +
diff --git a/perubahan banyak (another copy).txt b/perubahan banyak (another copy).txt
new file mode 100644
triyono@develop:/media/umum/praxis-tugas/foldernya bob/rhymes$ 
triyono@develop:/media/umum/praxis-tugas/foldernya bob/rhymes$ git push bob master
Counting objects: 3, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 393 bytes | 393.00 KiB/s, done.
Total 3 (delta 1), reused 0 (delta 0)
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To https://github.com/triyonoyangbagus/rhymes.git
! [remote rejected] master -> master (permission denied)
error: failed to push some refs to 'https://github.com/triyonoyangbagus/rhymes.git'
triyono@develop:/media/umum/praxis-tugas/foldernya bob/rhymes\$

# masih ada beberapa error , belum bisa menggunakan 2 akun github dalam 1 pc
