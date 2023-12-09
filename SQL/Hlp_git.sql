/*
Файл для создания таблиц, содержащих перевод HELP'a
для Git, полученный командой $git help --all в git bash.
Перевод с помощью Google™ Translator. 
Воронов В.И. 2023г
*/
CREATE SEQUENCE GEN_HLPG START WITH 0 INCREMENT BY 1;

Commit work;

CREATE TABLE SL_HLP_Git(
   CODID Smallint NOT NULL,
   L_Tip VARCHAR(65),
   R_Tip VARCHAR(85),
CONSTRAINT PK_HLPGit PRIMARY KEY (CODID)
);

Commit work;

INSERT INTO SL_HLP_Git(CODID, L_Tip, R_Tip)  VALUES ( 1, 'Main Porcelain Commands',                 'основные команды');
INSERT INTO SL_HLP_Git(CODID, L_Tip, R_Tip)  VALUES ( 2, 'Ancillary Commands/Manipulators',         'вспомогательные команды/манипуляторы');
INSERT INTO SL_HLP_Git(CODID, L_Tip, R_Tip)  VALUES ( 3, 'Ancillary Commands/Interrogators ',       'вспомогательные команды/запросчики');
INSERT INTO SL_HLP_Git(CODID, L_Tip, R_Tip)  VALUES ( 4, 'Interacting with Others',                 'взаимодействие с другими');
INSERT INTO SL_HLP_Git(CODID, L_Tip, R_Tip)  VALUES ( 5, 'Low-level Commands/Manipulators',         'низкоуровневые команды/манипуляторы');
INSERT INTO SL_HLP_Git(CODID, L_Tip, R_Tip)  VALUES ( 6, 'Low-level Commands/Interrogators',        'низкоуровневые команды/запросчики');
INSERT INTO SL_HLP_Git(CODID, L_Tip, R_Tip)  VALUES ( 7, 'Low-level Commands/Syncing Repositories', 'низкоуровневые команды/синхронизация репозиториев');
INSERT INTO SL_HLP_Git(CODID, L_Tip, R_Tip)  VALUES ( 8, 'Low-level Commands/Internal Helpers',     'команды низкого уровня/внутренние помощники');
INSERT INTO SL_HLP_Git(CODID, L_Tip, R_Tip)  VALUES ( 9, 'User-facing repository, command and file interfaces', 'пользовательский репозиторий, командные и файловые интерфейсы');
INSERT INTO SL_HLP_Git(CODID, L_Tip, R_Tip)  VALUES (10, 'Developer-facing file formats, protocols and other interfaces', 'форматы файлов, протоколы и другие интерфейсы, ориентированные на разработчиков.');
INSERT INTO SL_HLP_Git(CODID, L_Tip, R_Tip)  VALUES (11, 'External commands', 'внешние команды');


Commit work;

CREATE TABLE S_HLP_Git(
   CODHLPG Integer NOT NULL,
   ID_IND  smallint NOT NULL,
   GitKom VARCHAR(55),
   L_V VARCHAR(550),
   R_V VARCHAR(555),
CONSTRAINT PK_HLPGit_ALL PRIMARY KEY (CODHLPG)
);

ALTER TABLE S_HLP_Git  
 ADD CONSTRAINT FK_IDIND FOREIGN KEY (ID_IND) REFERENCES SL_HLP_Git(CODID) ON DELETE CASCADE ON UPDATE CASCADE; 
 
Commit work;
 
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'add',              'Add file contents to the index', 'добавить содержимое файла в индекс');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'am',               'Apply a series of patches from a mailbox', 'применить серию патчей из почтового ящика');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'archive',          'Create an archive of files from a named tree', 'создать архив файлов из именованного дерева');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'bisect',           'Use binary search to find the commit that introduced a bug', 'используйте двоичный поиск, чтобы найти коммит, в котором возникла ошибка');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'branch',           'List, create, or delete branches', 'список, создание или удаление ветвей');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'bundle',           'Move objects and refs by archive', 'перемещать объекты и ссылки по архиву');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'checkout',         'Switch branches or restore working tree files', 'переключить ветки или восстановить файлы рабочего дерева');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'cherry-pick',      'Apply the changes introduced by some existing commits', 'применить изменения, внесенные некоторыми существующими коммитами');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'citool',           'Graphical alternative to git-commit', 'графическая альтернатива git-commit');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'clean',            'Remove untracked files from the working tree ', 'удалить неотслеживаемые файлы из рабочего дерева');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'clone',            'Clone a repository into a new directory ', 'клонировать репозиторий в новый каталог');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'commit',           'Record changes to the repository ', 'записывать изменения в репозиторий');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'describe',         'Give an object a human readable name based on an available ref', 'дать объекту удобочитаемое имя на основе доступной ссылки');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'diff',             'Show changes between commits, commit and working tree, etc ', 'показывать изменения между коммитами, коммитами и рабочим деревом и т. д.');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'fetch',            'Download objects and refs from another repository', 'загрузить объекты и ссылки из другого репозитория');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'format-patch',     'Prepare patches for e-mail submission', 'подготовить исправления для отправки по электронной почте');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'gc',               'Cleanup unnecessary files and optimize the local repo: See «git help <command>» to read about a specific subcommand', 'очистите ненужные файлы и оптимизируйте локальный репозиторий: см. «git help <command>», чтобы узнать о конкретной подкоманде.');INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'gitk',             'The Git repository browser', 'браузер репозитория git');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'grep',             'Print lines matching a pattern', 'напечатать линии, соответствующие шаблону');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'gui ',             'A portable graphical interface to Git', 'портативный графический интерфейс для git: See «git help <command>» to read about a specific subcommand');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'init',             'Create an empty Git repository or reinitialize an existing one', 'создайте пустой репозиторий git или повторно инициализируйте существующий');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'log',              'Show commit logs ', 'показать журналы коммитов');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'maintenance',      'Run tasks to optimize Git repository data ', 'запускать задачи по оптимизации данных репозитория git');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'merge',            'Join two or more development histories together ', 'объединить две или более истории развития вместе');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'mv',               'Move or rename a file, a directory, or a symlink ', 'переместить или переименовать файл, каталог или символическую ссылку');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'notes ',           'Add or inspect object notes ', 'добавить или проверить примечания к объекту');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'pull',             'Fetch from and integrate with another repository or a local branch', 'получить из другого репозитория или локальной ветки и интегрировать их с другим репозиторием');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'push',             'Update remote refs along with associated objects ', 'обновить удаленные ссылки вместе со связанными объектами');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'range-diff',       'Compare two commit ranges (e.g. two versions of a branch) ', 'сравнить два диапазона фиксации (например, две версии ветки)');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'rebase',           'Reapply commits on top of another base tip ', 'повторно применить коммиты поверх другого базового совета(tip)');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'reset',            'Reset current HEAD to the specified state ', 'сбросить текущую (HEAD) головку в указанное состояние');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'restore',          'Restore working tree files ', 'восстановить файлы рабочего дерева');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'revert',           'Revert some existing commits ', 'вернуть некоторые существующие коммиты');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'rm',               'Remove files from the working tree and from the index ', 'удалить файлы из рабочего дерева и из индекса');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'scalar',           'A tool for managing large Git repositories ', 'инструмент для управления большими репозиториями git');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'shortlog',         'Summarize git log output', 'суммировать вывод «git log»');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'show',             'Show various types of objects ', 'показывать различные типы объектов');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'sparse-checkout',  'Reduce your working tree to a subset of tracked files ', 'сократите свое рабочее дерево до подмножества отслеживаемых файлов.');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'stash',            'Stash the changes in a dirty working directory away ', 'спрятать изменения в грязном(черновом?) рабочем каталоге');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'status',           'Show the working tree status ', 'показать статус рабочего дерева');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'submodule',        'Initialize, update or inspect submodules ', 'инициализировать, обновлять или проверять подмодули');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'switch',           'Switch branches ', 'переключать ветки');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'tag',              'Create, list, delete or verify a tag object signed with GPG ', 'создавать, перечитать, удалять или проверять объект тега, подписанный с помощью GPG');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'worktree',         'Manage multiple working trees ', 'управлять несколькими рабочими деревьями');

Commit work;

INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 2,  'config',        'Get and set repository or global options', 'получить и установить репозиторий или глобальные параметры');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 2,  'fast-export',   'Git data exporter', 'экспортер данных git');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 2,  'fast-import',   'Backend for fast Git data importers ', 'бэкэнд для быстрых импортеров данных git');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 2,  'filter-branch', 'Rewrite branches ', 'переписать ветки');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 2,  'mergetool',     'Run merge conflict resolution tools to resolve merge conflicts', 'запустите инструменты разрешения конфликтов слияния, чтобы разрешить конфликты слияния');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 2,  'pack-refs',     'Pack heads and tags for efficient repository access ', 'заголовки пакетов и теги для эффективного доступа к хранилищу');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 2,  'prune',         'Prune all unreachable objects from the object database', 'удалить все недоступные объекты из базы данных объектов');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 2,  'reflog',        'Manage reflog information ', 'управлять информацией о рефлогах');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 2,  'remote',        'Manage set of tracked repositories', 'управлять набором отслеживаемых репозиториев');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 2,  'repack',        'Pack unpacked objects in a repository', 'упаковать распакованные объекты в репозиторий');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 2,  'replace',       'Create, list, delete refs to replace objects ', 'создавать, перечислять, удалять ссылки для замены объектов');

Commit work;

INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 3,  'annotate',       'Annotate file lines with commit information',                           'аннотировать строки файла информацией о фиксации');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 3,  'blame',          'Show what revision and author last modified each line of a file',       'показать, какая редакция и автор в последний раз изменяли каждую строку файла');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 3,  'bugreport',      'Collect information for user to file a bug report',                     'собирать информацию для пользователя, чтобы отправить отчет об ошибке');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 3,  'count-objects',  'Count unpacked number of objects and their disk consumption',           'подсчитать количество распакованных объектов и их потребление диска');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 3,  'diagnose',       'Generate a zip archive of diagnostic information',                      'создать zip-архив с диагностической информацией');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 3,  'difftool',       'Show changes using common diff tools',                                  'показывать изменения, используя общие инструменты сравнения');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 3,  'fsck',           'Verifies the connectivity and validity of the objects in the database', 'проверяет связность и достоверность объектов в базе данных');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 3,  'gitweb',         'Git web interface (web frontend to Git repositories)',                  'веб-интерфейс git (веб-интерфейс для репозиториев git)');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 3,  'help',           'Display help information about Git',                                    'показать справочную информацию о git');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 3,  'instaweb',       'Instantly browse your working repository in gitweb',                    'мгновенно просмотреть свой рабочий репозиторий в gitweb');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 3,  'merge-tree',     'Perform merge without touching index or working tree',                  'выполнить слияние, не касаясь индекса или рабочего дерева');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 3,  'rerere',         'Reuse recorded resolution of conflicted merges',                        'повторно использовать записанное разрешение конфликтных слияний');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 3,  'show-branch',    'Show branches and their commits',                                       'показать ветки и их коммиты');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 3,  'verify-commit',  'Check the GPG signature of commits',                                    'проверьте подпись gpg коммитов');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 3,  'verify-tag',     'Check the GPG signature of tags',                                       'проверьте подпись тегов gpg');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 3,  'version',        'Display version information about Git',                                 'вывести информацию о версии git');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 3,  'whatchanged',    'Show logs with differences each commit introduces',                     'показывать журналы с различиями, которые вносит каждый коммит');

Commit work;

INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 4,  'archimport',      'Import a GNU Arch repository into Git',                           'импортировать репозиторий GNU Arch в git');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 4,  'cvsexportcommit', 'Export a single commit to a CVS checkout',                        'экспортировать один коммит в кассу cvs');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 4,  'cvsimport',       'Salvage your data out of another SCM people love to hate',        'спасите свои данные от другой системы, которую люди любят ненавидеть');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 4,  'cvsserver',       'A CVS server emulator for Git',                                   'эмулятор сервера CVS для git');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 4,  'imap-send',       'Send a collection of patches from stdin to an IMAP folder',       'отправить коллекцию патчей со стандартного ввода в папку imap');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 4,  'p4',              'Import from and submit to Perforce repositories',                 'импортировать из репозиториев Perforce и отправлять в них');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 4,  'quiltimport',     'Applies a quilt patchset onto the current branch',                'применяет набор патчей quilt к текущей ветке');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 4,  'request-pull',    'Generates a summary of pending changes',                          'генерирует сводку ожидающих изменений');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 4,  'send-email',      'Send a collection of patches as emails',                          'отправить коллекцию патчей по электронной почте');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 4,  'svn',             'Bidirectional operation between a Subversion repository and Git', 'двунаправленная операция между репозиторием Subversion и git');

Commit work;

INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 5,'apply', 'Apply a patch to files and/or to the index', 'применить патч к файлам и/или индексу');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 5,'checkout-index', 'Copy files from the index to the working tree', 'копировать файлы из индекса в рабочее дерево');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 5,'commit-graph', 'Write and verify Git commit-graph files', 'писать и проверять файлы git commit-graph');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 5,'commit-tree', 'Create a new commit object', 'создать новый объект фиксации');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 5,'hash-object', 'Compute object ID and optionally create an object from a file', 'вычислить идентификатор объекта и, при необходимости, создать объект из файла');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 5,'index-pack', 'Build pack index file for an existing packed archive', 'построить индексный файл пакета для существующего упакованного архива');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 5,'merge-file', 'Run a three-way file merge', 'запустить трехстороннее слияние файлов');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 5,'merge-index', 'Run a merge for files needing merging', 'запустить объединение файлов, нуждающихся в объединении');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 5,'mktag', 'Creates a tag object with extra validation', 'создает объект тега с дополнительной проверкой');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 5,'mktree', 'Build a tree-object from ls-tree formatted text', 'построить древовидный объект из текста в формате ls-tree');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 5,'multi-pack-index', 'Write and verify multi-pack-indexes', 'писать и проверять мультипакетные индексы');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 5,'pack-objects', 'Create a packed archive of objects', 'создать упакованный архив объектов');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 5,'prune-packed', 'Remove extra objects that are already in pack files', 'удалить лишние объекты, которые уже есть в файлах пакета');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 5,'read-tree', 'Reads tree information into the index', 'считывает информацию о дереве в индекс');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 5,'symbolic-ref', 'Read, modify and delete symbolic refs', 'читать, изменять и удалять символические ссылки');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 5,'unpack-objects', 'Unpack objects from a packed archive', 'распаковать объекты из запакованного архива');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 5,'update-index', 'Register file contents in the working tree to the index', 'зарегистрировать содержимое файла в рабочем дереве по индексу');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 5,'update-ref', 'Update the object name stored in a ref safely', 'безопасно обновить имя объекта, хранящееся в ссылке');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 5,'write-tree', 'Create a tree object from the current index', 'создать объект дерева из текущего индекса');

Commit work;

INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 6,'cat-file',          'Provide contents or details of repository objects', 'предоставить содержимое или подробную информацию об объектах репозитория');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 6,'cherry',            'Find commits yet to be applied to upstream', 'найти коммиты, которые еще предстоит применить к восходящему потоку');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 6,'diff-files',        'Compares files in the working tree and the index', 'сравнивает файлы в рабочем дереве и индексе');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 6,'diff-index',        'Compare a tree to the working tree or index', 'сравнить дерево с рабочим деревом или индексом');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 6,'diff-tree',         'Compares the content and mode of blobs found via two tree objects', 'сравнивает содержимое и режим больших двоичных объектов, найденных с помощью двух древовидных объектов');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 6,'for-each-ref',      'Output information on each ref', 'выводить информацию по каждой ссылке');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 6,'for-each-repo',     'Run a Git command on a list of repositories', 'запустите команду git в списке репозиториев');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 6,'get-tar-commit-id', 'Extract commit ID from an archive created using git-archive', 'извлечь идентификатор фиксации из архива, созданного с помощью git-archive');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 6,'ls-files',          'Show information about files in the index and the working tree', 'показывать информацию о файлах в индексе и рабочем дереве');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 6,'ls-remote',         'List references in a remote repository', 'список ссылок в удаленном репозитории');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 6,'ls-tree',           'List the contents of a tree object', 'вывести список содержимого объекта дерева');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 6,'merge-base',        'Find as good common ancestors as possible for a merge', 'найти как можно более хороших общих предков для слияния');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 6,'name-rev',          'Find symbolic names for given revs', 'найти символические имена для заданных оборотов');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 6,'pack-redundant',    'Find redundant pack files', 'найти лишние файлы пакета');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 6,'rev-list',          'Lists commit objects in reverse chronological order', 'перечисляет объекты фиксации в обратном хронологическом порядке');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 6,'rev-parse',         'Pick out and massage parameters', 'выбрать и массировать параметры');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 6,'show-index',        'Show packed archive index', 'показать упакованный индекс архива');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 6,'show-ref',          'List references in a local repository', 'список ссылок в локальном репозитории');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 6,'unpack-file',       'Creates a temporary file with a blob''s contents', 'создает временный файл с содержимым blob');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 6,'var',               'Show a Git logical variable', 'показать логическую переменную git');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 6,'verify-pack',       'Validate packed Git archive files', 'проверить упакованные файлы архива git');

Commit work;

INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 7,'daemon',             'A really simple server for Git repositories', 'действительно простой сервер для репозиториев git');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 7,'fetch-pack',         'Receive missing objects from another repository', 'получить недостающие объекты из другого репозитория');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 7,'http-backend',       'Server side implementation of Git over HTTP', 'реализация git на стороне сервера через http');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 7,'send-pack',          'Push objects over Git protocol to another repository', 'отправлять объекты по протоколу git в другой репозиторий');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 7,'update-server-info', 'Update auxiliary info file to help dumb servers', 'обновить вспомогательный информационный файл, чтобы помочь тупым серверам');

Commit work;

INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 8,'check-attr',         'Display gitattributes information', 'отображать информацию о gitattributes');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 8,'check-ignore',       'Debug gitignore / exclude files', 'отладка gitignore/исключение файлов');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 8,'check-mailmap',      'Show canonical names and email addresses of contacts', 'показывать канонические имена и адреса электронной почты контактов');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 8,'check-ref-format',   'Ensures that a reference name is well formed', 'гарантирует, что ссылочное имя правильно сформировано');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 8,'column',             'Display data in columns', 'отображать данные в столбцах');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 8,'credential',         'Retrieve and store user credentials', 'получать и хранить учетные данные пользователя');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 8,'credential-cache',   'Helper to temporarily store passwords in memory', 'помощник для временного хранения паролей в памяти');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 8,'credential-store',   'Helper to store credentials on disk', 'помощник для хранения учетных данных на диске');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 8,'fmt-merge-msg',      'Produce a merge commit message', 'создать сообщение о фиксации слияния');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 8,'hook',               'Run git hooks', 'запускать git-хуки');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 8,'interpret-trailers', 'Add or parse structured information in commit messages', 'добавлять или анализировать структурированную информацию в сообщениях фиксации');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 8,'mailinfo',           'Extracts patch and authorship from a single e-mail message', 'извлекает патч и авторство из одного сообщения электронной почты');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 8,'mailsplit',          'Simple UNIX mbox splitter program', 'Простая программа-разделитель unix mbox');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 8,'merge-one-file',     'The standard helper program to use with git-merge-index', 'стандартная вспомогательная программа для использования с git-merge-index');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 8,'patch-id',           'Compute unique ID for a patch', 'вычислить уникальный идентификатор патча');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 8,'sh-i18n',            'Git''s i18n setup code for shell scripts', 'Код установки git i18n для сценариев оболочки');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 8,'sh-setup',           'Common Git shell script setup code', 'общий код установки сценария оболочки git');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 8,'stripspace',         'Remove unnecessary whitespace', 'удалить ненужные пробелы');

Commit work;

INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 9,'attributes',        'Defining attributes per path', 'определение атрибутов для каждого пути');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 9,'cli',               'Git command-line interface and conventions', 'Интерфейс командной строки git и соглашения');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 9,'hooks',             'Hooks used by Git', 'хуки, используемые git');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 9,'ignore',            'Specifies intentionally untracked files to ignore', 'указывает намеренно неотслеживаемые файлы, которые следует игнорировать');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 9,'mailmap',           'Map author/committer names and/or E-Mail addresses', 'имена авторов/коммитаторов и/или адреса электронной почты карты');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 9,'modules',           'Defining submodule properties', 'определение свойств подмодуля');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 9,'repository-layout', 'Git Repository Layout', 'макет репозитория git');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 9,'revisions',         'Specifying revisions and ranges for Git', 'указание ревизий и диапазонов для git');

Commit work;

INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 10,'format-bundle',         'The bundle file format', 'формат файла пакета');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 10,'format-chunk',          'Chunk-based file formats', 'форматы файлов на основе фрагментов');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 10,'format-commit-graph',   'Git commit-graph format', 'формат git commit-graph');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 10,'format-index',          'Git index format', 'формат индекса git');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 10,'format-pack',           'Git pack format', 'формат пакета git');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 10,'format-signature',      'Git cryptographic signature formats', 'форматы криптографических подписей git');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 10,'protocol-capabilities', 'Protocol v0 and v1 capabilities', 'возможности протокола v0 и v1');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 10,'protocol-common',       'Things common to various protocols', 'вещи, общие для разных протоколов');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 10,'protocol-http',         'Git HTTP-based protocols', 'git HTTP-протоколы');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 10,'protocol-pack',         'How packs are transferred over-the-wire', 'как пакеты передаются по проводу');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 10,'protocol-v2',           'Git Wire Protocol, Version 2', 'протокол git Wire, версия 2');
 
 Commit work;
 
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 11,'askpass',                    '', 'спросить пасс');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 11,'askyesno',                   '', 'да/нет?');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 11,'credential-helper-selector', '', 'селектор-помощник по учетным данным');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 11,'credential-manager',         '', 'менеджер учетных данных');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 11,'credential-manager-core',    '', 'ядро менеджера учетных данных');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 11,'credential-manager-ui',      '', 'диспетчер учетных данных-ui');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 11,'flow',                       '', 'поток');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 11,'lfs',                        '', '???');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 11,'update-git-for-windows',     '', 'обновление-git-для-Windows');

 Commit work;