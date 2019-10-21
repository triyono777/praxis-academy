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

triyono@develop:/media/umum/praxis-tugas/foldernya bob$ git clone https://github.com/triyono777/rhymes.git
Cloning into 'rhymes'...
remote: Enumerating objects: 21, done.
remote: Counting objects: 100% (21/21), done.
remote: Compressing objects: 100% (11/11), done.
remote: Total 21 (delta 8), reused 20 (delta 7), pack-reused 0
Unpacking objects: 100% (21/21), done.
triyono@develop:/media/umum/praxis-tugas/foldernya bob$ cd rhymes/
triyono@develop:/media/umum/praxis-tugas/foldernya bob/rhymes$ git checkout -b hickory-dickory
Switched to a new branch 'hickory-dickory'
triyono@develop:/media/umum/praxis-tugas/foldernya bob/rhymes$ wget https://github.com/bryanhirsch/rhymes/blob/master/hickory-dickory-dock.txt
--2019-10-21 09:55:23-- https://github.com/bryanhirsch/rhymes/blob/master/hickory-dickory-dock.txt
Resolving github.com (github.com)... 13.229.188.59
Connecting to github.com (github.com)|13.229.188.59|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [text/html]
Saving to: ‘hickory-dickory-dock.txt’

hickory-dickory-doc [ <=> ] 64,16K --.-KB/s in 0,08s

2019-10-21 09:55:24 (763 KB/s) - ‘hickory-dickory-dock.txt’ saved [65702]

triyono@develop:/media/umum/praxis-tugas/foldernya bob/rhymes\$ add hickory-dickory-dock.txt

Command 'add' not found, did you mean:

command 'axd' from deb afnix
command 'aid' from deb id-utils
command 'atd' from deb at
command 'tdd' from deb devtodo
command 'and' from deb and
command 'pdd' from deb pdd
command 'ad' from deb netatalk
command 'dad' from deb debian-dad
command 'adb' from deb adb
command 'amd' from deb am-utils
command 'ddd' from deb ddd
command 'dd' from deb coreutils
command 'adbd' from deb android-tools-adbd
command 'ldd' from deb libc-bin

Try: sudo apt install <deb name>

triyono@develop:/media/umum/praxis-tugas/foldernya bob/rhymes$ git add hickory-dickory-dock.txt 
triyono@develop:/media/umum/praxis-tugas/foldernya bob/rhymes$ git commit -m 'adde hickory-dickory.txt'
[hickory-dickory 2a37f44] adde hickory-dickory.txt
1 file changed, 882 insertions(+)
create mode 100644 hickory-dickory-dock.txt
triyono@develop:/media/umum/praxis-tugas/foldernya bob/rhymes\$ git push origin hickory-dickory
Counting objects: 3, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 14.14 KiB | 4.71 MiB/s, done.
Total 3 (delta 1), reused 0 (delta 0)
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
remote:
remote: Create a pull request for 'hickory-dickory' on GitHub by visiting:
remote: https://github.com/triyono777/rhymes/pull/new/hickory-dickory
remote:
To https://github.com/triyono777/rhymes.git

- [new branch] hickory-dickory -> hickory-dickory
  triyono@develop:/media/umum/praxis-tugas/foldernya bob/rhymes\$
