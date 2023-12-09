/*
���� ��� �������� ������, ���������� ������� HELP'a
��� Git, ���������� �������� $git help --all � git bash.
������� � ������� Google� Translator. 
������� �.�. 2023�
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

INSERT INTO SL_HLP_Git(CODID, L_Tip, R_Tip)  VALUES ( 1, 'Main Porcelain Commands',                 '�������� �������');
INSERT INTO SL_HLP_Git(CODID, L_Tip, R_Tip)  VALUES ( 2, 'Ancillary Commands/Manipulators',         '��������������� �������/������������');
INSERT INTO SL_HLP_Git(CODID, L_Tip, R_Tip)  VALUES ( 3, 'Ancillary Commands/Interrogators ',       '��������������� �������/����������');
INSERT INTO SL_HLP_Git(CODID, L_Tip, R_Tip)  VALUES ( 4, 'Interacting with Others',                 '�������������� � �������');
INSERT INTO SL_HLP_Git(CODID, L_Tip, R_Tip)  VALUES ( 5, 'Low-level Commands/Manipulators',         '�������������� �������/������������');
INSERT INTO SL_HLP_Git(CODID, L_Tip, R_Tip)  VALUES ( 6, 'Low-level Commands/Interrogators',        '�������������� �������/����������');
INSERT INTO SL_HLP_Git(CODID, L_Tip, R_Tip)  VALUES ( 7, 'Low-level Commands/Syncing Repositories', '�������������� �������/������������� ������������');
INSERT INTO SL_HLP_Git(CODID, L_Tip, R_Tip)  VALUES ( 8, 'Low-level Commands/Internal Helpers',     '������� ������� ������/���������� ���������');
INSERT INTO SL_HLP_Git(CODID, L_Tip, R_Tip)  VALUES ( 9, 'User-facing repository, command and file interfaces', '���������������� �����������, ��������� � �������� ����������');
INSERT INTO SL_HLP_Git(CODID, L_Tip, R_Tip)  VALUES (10, 'Developer-facing file formats, protocols and other interfaces', '������� ������, ��������� � ������ ����������, ��������������� �� �������������.');
INSERT INTO SL_HLP_Git(CODID, L_Tip, R_Tip)  VALUES (11, 'External commands', '������� �������');


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
 
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'add',              'Add file contents to the index', '�������� ���������� ����� � ������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'am',               'Apply a series of patches from a mailbox', '��������� ����� ������ �� ��������� �����');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'archive',          'Create an archive of files from a named tree', '������� ����� ������ �� ������������ ������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'bisect',           'Use binary search to find the commit that introduced a bug', '����������� �������� �����, ����� ����� ������, � ������� �������� ������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'branch',           'List, create, or delete branches', '������, �������� ��� �������� ������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'bundle',           'Move objects and refs by archive', '���������� ������� � ������ �� ������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'checkout',         'Switch branches or restore working tree files', '����������� ����� ��� ������������ ����� �������� ������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'cherry-pick',      'Apply the changes introduced by some existing commits', '��������� ���������, ��������� ���������� ������������� ���������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'citool',           'Graphical alternative to git-commit', '����������� ������������ git-commit');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'clean',            'Remove untracked files from the working tree ', '������� ��������������� ����� �� �������� ������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'clone',            'Clone a repository into a new directory ', '����������� ����������� � ����� �������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'commit',           'Record changes to the repository ', '���������� ��������� � �����������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'describe',         'Give an object a human readable name based on an available ref', '���� ������� ������������� ��� �� ������ ��������� ������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'diff',             'Show changes between commits, commit and working tree, etc ', '���������� ��������� ����� ���������, ��������� � ������� ������� � �. �.');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'fetch',            'Download objects and refs from another repository', '��������� ������� � ������ �� ������� �����������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'format-patch',     'Prepare patches for e-mail submission', '����������� ����������� ��� �������� �� ����������� �����');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'gc',               'Cleanup unnecessary files and optimize the local repo: See �git help <command>� to read about a specific subcommand', '�������� �������� ����� � ������������� ��������� �����������: ��. �git help <command>�, ����� ������ � ���������� ����������.');INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'gitk',             'The Git repository browser', '������� ����������� git');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'grep',             'Print lines matching a pattern', '���������� �����, ��������������� �������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'gui ',             'A portable graphical interface to Git', '����������� ����������� ��������� ��� git: See �git help <command>� to read about a specific subcommand');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'init',             'Create an empty Git repository or reinitialize an existing one', '�������� ������ ����������� git ��� �������� ��������������� ������������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'log',              'Show commit logs ', '�������� ������� ��������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'maintenance',      'Run tasks to optimize Git repository data ', '��������� ������ �� ����������� ������ ����������� git');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'merge',            'Join two or more development histories together ', '���������� ��� ��� ����� ������� �������� ������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'mv',               'Move or rename a file, a directory, or a symlink ', '����������� ��� ������������� ����, ������� ��� ������������� ������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'notes ',           'Add or inspect object notes ', '�������� ��� ��������� ���������� � �������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'pull',             'Fetch from and integrate with another repository or a local branch', '�������� �� ������� ����������� ��� ��������� ����� � ������������� �� � ������ ������������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'push',             'Update remote refs along with associated objects ', '�������� ��������� ������ ������ �� ���������� ���������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'range-diff',       'Compare two commit ranges (e.g. two versions of a branch) ', '�������� ��� ��������� �������� (��������, ��� ������ �����)');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'rebase',           'Reapply commits on top of another base tip ', '�������� ��������� ������� ������ ������� �������� ������(tip)');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'reset',            'Reset current HEAD to the specified state ', '�������� ������� (HEAD) ������� � ��������� ���������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'restore',          'Restore working tree files ', '������������ ����� �������� ������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'revert',           'Revert some existing commits ', '������� ��������� ������������ �������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'rm',               'Remove files from the working tree and from the index ', '������� ����� �� �������� ������ � �� �������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'scalar',           'A tool for managing large Git repositories ', '���������� ��� ���������� �������� ������������� git');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'shortlog',         'Summarize git log output', '����������� ����� �git log�');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'show',             'Show various types of objects ', '���������� ��������� ���� ��������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'sparse-checkout',  'Reduce your working tree to a subset of tracked files ', '��������� ���� ������� ������ �� ������������ ������������� ������.');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'stash',            'Stash the changes in a dirty working directory away ', '�������� ��������� � �������(��������?) ������� ��������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'status',           'Show the working tree status ', '�������� ������ �������� ������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'submodule',        'Initialize, update or inspect submodules ', '����������������, ��������� ��� ��������� ���������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'switch',           'Switch branches ', '����������� �����');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'tag',              'Create, list, delete or verify a tag object signed with GPG ', '���������, ����������, ������� ��� ��������� ������ ����, ����������� � ������� GPG');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 1,  'worktree',         'Manage multiple working trees ', '��������� ����������� �������� ���������');

Commit work;

INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 2,  'config',        'Get and set repository or global options', '�������� � ���������� ����������� ��� ���������� ���������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 2,  'fast-export',   'Git data exporter', '��������� ������ git');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 2,  'fast-import',   'Backend for fast Git data importers ', '������ ��� ������� ���������� ������ git');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 2,  'filter-branch', 'Rewrite branches ', '���������� �����');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 2,  'mergetool',     'Run merge conflict resolution tools to resolve merge conflicts', '��������� ����������� ���������� ���������� �������, ����� ��������� ��������� �������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 2,  'pack-refs',     'Pack heads and tags for efficient repository access ', '��������� ������� � ���� ��� ������������ ������� � ���������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 2,  'prune',         'Prune all unreachable objects from the object database', '������� ��� ����������� ������� �� ���� ������ ��������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 2,  'reflog',        'Manage reflog information ', '��������� ����������� � ��������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 2,  'remote',        'Manage set of tracked repositories', '��������� ������� ������������� ������������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 2,  'repack',        'Pack unpacked objects in a repository', '��������� ������������� ������� � �����������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 2,  'replace',       'Create, list, delete refs to replace objects ', '���������, �����������, ������� ������ ��� ������ ��������');

Commit work;

INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 3,  'annotate',       'Annotate file lines with commit information',                           '������������ ������ ����� ����������� � ��������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 3,  'blame',          'Show what revision and author last modified each line of a file',       '��������, ����� �������� � ����� � ��������� ��� �������� ������ ������ �����');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 3,  'bugreport',      'Collect information for user to file a bug report',                     '�������� ���������� ��� ������������, ����� ��������� ����� �� ������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 3,  'count-objects',  'Count unpacked number of objects and their disk consumption',           '���������� ���������� ������������� �������� � �� ����������� �����');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 3,  'diagnose',       'Generate a zip archive of diagnostic information',                      '������� zip-����� � ��������������� �����������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 3,  'difftool',       'Show changes using common diff tools',                                  '���������� ���������, ��������� ����� ����������� ���������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 3,  'fsck',           'Verifies the connectivity and validity of the objects in the database', '��������� ��������� � ������������� �������� � ���� ������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 3,  'gitweb',         'Git web interface (web frontend to Git repositories)',                  '���-��������� git (���-��������� ��� ������������ git)');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 3,  'help',           'Display help information about Git',                                    '�������� ���������� ���������� � git');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 3,  'instaweb',       'Instantly browse your working repository in gitweb',                    '��������� ����������� ���� ������� ����������� � gitweb');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 3,  'merge-tree',     'Perform merge without touching index or working tree',                  '��������� �������, �� ������� ������� ��� �������� ������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 3,  'rerere',         'Reuse recorded resolution of conflicted merges',                        '�������� ������������ ���������� ���������� ����������� �������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 3,  'show-branch',    'Show branches and their commits',                                       '�������� ����� � �� �������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 3,  'verify-commit',  'Check the GPG signature of commits',                                    '��������� ������� gpg ��������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 3,  'verify-tag',     'Check the GPG signature of tags',                                       '��������� ������� ����� gpg');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 3,  'version',        'Display version information about Git',                                 '������� ���������� � ������ git');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 3,  'whatchanged',    'Show logs with differences each commit introduces',                     '���������� ������� � ����������, ������� ������ ������ ������');

Commit work;

INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 4,  'archimport',      'Import a GNU Arch repository into Git',                           '������������� ����������� GNU Arch � git');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 4,  'cvsexportcommit', 'Export a single commit to a CVS checkout',                        '�������������� ���� ������ � ����� cvs');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 4,  'cvsimport',       'Salvage your data out of another SCM people love to hate',        '������� ���� ������ �� ������ �������, ������� ���� ����� ����������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 4,  'cvsserver',       'A CVS server emulator for Git',                                   '�������� ������� CVS ��� git');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 4,  'imap-send',       'Send a collection of patches from stdin to an IMAP folder',       '��������� ��������� ������ �� ������������ ����� � ����� imap');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 4,  'p4',              'Import from and submit to Perforce repositories',                 '������������� �� ������������ Perforce � ���������� � ���');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 4,  'quiltimport',     'Applies a quilt patchset onto the current branch',                '��������� ����� ������ quilt � ������� �����');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 4,  'request-pull',    'Generates a summary of pending changes',                          '���������� ������ ��������� ���������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 4,  'send-email',      'Send a collection of patches as emails',                          '��������� ��������� ������ �� ����������� �����');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,  GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 4,  'svn',             'Bidirectional operation between a Subversion repository and Git', '��������������� �������� ����� ������������ Subversion � git');

Commit work;

INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 5,'apply', 'Apply a patch to files and/or to the index', '��������� ���� � ������ �/��� �������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 5,'checkout-index', 'Copy files from the index to the working tree', '���������� ����� �� ������� � ������� ������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 5,'commit-graph', 'Write and verify Git commit-graph files', '������ � ��������� ����� git commit-graph');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 5,'commit-tree', 'Create a new commit object', '������� ����� ������ ��������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 5,'hash-object', 'Compute object ID and optionally create an object from a file', '��������� ������������� ������� �, ��� �������������, ������� ������ �� �����');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 5,'index-pack', 'Build pack index file for an existing packed archive', '��������� ��������� ���� ������ ��� ������������� ������������ ������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 5,'merge-file', 'Run a three-way file merge', '��������� ������������� ������� ������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 5,'merge-index', 'Run a merge for files needing merging', '��������� ����������� ������, ����������� � �����������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 5,'mktag', 'Creates a tag object with extra validation', '������� ������ ���� � �������������� ���������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 5,'mktree', 'Build a tree-object from ls-tree formatted text', '��������� ����������� ������ �� ������ � ������� ls-tree');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 5,'multi-pack-index', 'Write and verify multi-pack-indexes', '������ � ��������� �������������� �������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 5,'pack-objects', 'Create a packed archive of objects', '������� ����������� ����� ��������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 5,'prune-packed', 'Remove extra objects that are already in pack files', '������� ������ �������, ������� ��� ���� � ������ ������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 5,'read-tree', 'Reads tree information into the index', '��������� ���������� � ������ � ������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 5,'symbolic-ref', 'Read, modify and delete symbolic refs', '������, �������� � ������� ������������� ������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 5,'unpack-objects', 'Unpack objects from a packed archive', '����������� ������� �� ������������� ������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 5,'update-index', 'Register file contents in the working tree to the index', '���������������� ���������� ����� � ������� ������ �� �������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 5,'update-ref', 'Update the object name stored in a ref safely', '��������� �������� ��� �������, ���������� � ������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 5,'write-tree', 'Create a tree object from the current index', '������� ������ ������ �� �������� �������');

Commit work;

INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 6,'cat-file',          'Provide contents or details of repository objects', '������������ ���������� ��� ��������� ���������� �� �������� �����������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 6,'cherry',            'Find commits yet to be applied to upstream', '����� �������, ������� ��� ��������� ��������� � ����������� ������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 6,'diff-files',        'Compares files in the working tree and the index', '���������� ����� � ������� ������ � �������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 6,'diff-index',        'Compare a tree to the working tree or index', '�������� ������ � ������� ������� ��� ��������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 6,'diff-tree',         'Compares the content and mode of blobs found via two tree objects', '���������� ���������� � ����� ������� �������� ��������, ��������� � ������� ���� ����������� ��������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 6,'for-each-ref',      'Output information on each ref', '�������� ���������� �� ������ ������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 6,'for-each-repo',     'Run a Git command on a list of repositories', '��������� ������� git � ������ ������������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 6,'get-tar-commit-id', 'Extract commit ID from an archive created using git-archive', '������� ������������� �������� �� ������, ���������� � ������� git-archive');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 6,'ls-files',          'Show information about files in the index and the working tree', '���������� ���������� � ������ � ������� � ������� ������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 6,'ls-remote',         'List references in a remote repository', '������ ������ � ��������� �����������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 6,'ls-tree',           'List the contents of a tree object', '������� ������ ����������� ������� ������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 6,'merge-base',        'Find as good common ancestors as possible for a merge', '����� ��� ����� ����� ������� ����� ������� ��� �������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 6,'name-rev',          'Find symbolic names for given revs', '����� ������������� ����� ��� �������� ��������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 6,'pack-redundant',    'Find redundant pack files', '����� ������ ����� ������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 6,'rev-list',          'Lists commit objects in reverse chronological order', '����������� ������� �������� � �������� ��������������� �������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 6,'rev-parse',         'Pick out and massage parameters', '������� � ����������� ���������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 6,'show-index',        'Show packed archive index', '�������� ����������� ������ ������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 6,'show-ref',          'List references in a local repository', '������ ������ � ��������� �����������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 6,'unpack-file',       'Creates a temporary file with a blob''s contents', '������� ��������� ���� � ���������� blob');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 6,'var',               'Show a Git logical variable', '�������� ���������� ���������� git');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 6,'verify-pack',       'Validate packed Git archive files', '��������� ����������� ����� ������ git');

Commit work;

INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 7,'daemon',             'A really simple server for Git repositories', '������������� ������� ������ ��� ������������ git');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 7,'fetch-pack',         'Receive missing objects from another repository', '�������� ����������� ������� �� ������� �����������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 7,'http-backend',       'Server side implementation of Git over HTTP', '���������� git �� ������� ������� ����� http');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 7,'send-pack',          'Push objects over Git protocol to another repository', '���������� ������� �� ��������� git � ������ �����������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 7,'update-server-info', 'Update auxiliary info file to help dumb servers', '�������� ��������������� �������������� ����, ����� ������ ����� ��������');

Commit work;

INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 8,'check-attr',         'Display gitattributes information', '���������� ���������� � gitattributes');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 8,'check-ignore',       'Debug gitignore / exclude files', '������� gitignore/���������� ������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 8,'check-mailmap',      'Show canonical names and email addresses of contacts', '���������� ������������ ����� � ������ ����������� ����� ���������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 8,'check-ref-format',   'Ensures that a reference name is well formed', '�����������, ��� ��������� ��� ��������� ������������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 8,'column',             'Display data in columns', '���������� ������ � ��������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 8,'credential',         'Retrieve and store user credentials', '�������� � ������� ������� ������ ������������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 8,'credential-cache',   'Helper to temporarily store passwords in memory', '�������� ��� ���������� �������� ������� � ������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 8,'credential-store',   'Helper to store credentials on disk', '�������� ��� �������� ������� ������ �� �����');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 8,'fmt-merge-msg',      'Produce a merge commit message', '������� ��������� � �������� �������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 8,'hook',               'Run git hooks', '��������� git-����');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 8,'interpret-trailers', 'Add or parse structured information in commit messages', '��������� ��� ������������� ����������������� ���������� � ���������� ��������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 8,'mailinfo',           'Extracts patch and authorship from a single e-mail message', '��������� ���� � ��������� �� ������ ��������� ����������� �����');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 8,'mailsplit',          'Simple UNIX mbox splitter program', '������� ���������-����������� unix mbox');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 8,'merge-one-file',     'The standard helper program to use with git-merge-index', '����������� ��������������� ��������� ��� ������������� � git-merge-index');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 8,'patch-id',           'Compute unique ID for a patch', '��������� ���������� ������������� �����');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 8,'sh-i18n',            'Git''s i18n setup code for shell scripts', '��� ��������� git i18n ��� ��������� ��������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 8,'sh-setup',           'Common Git shell script setup code', '����� ��� ��������� �������� �������� git');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 8,'stripspace',         'Remove unnecessary whitespace', '������� �������� �������');

Commit work;

INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 9,'attributes',        'Defining attributes per path', '����������� ��������� ��� ������� ����');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 9,'cli',               'Git command-line interface and conventions', '��������� ��������� ������ git � ����������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 9,'hooks',             'Hooks used by Git', '����, ������������ git');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 9,'ignore',            'Specifies intentionally untracked files to ignore', '��������� ��������� ��������������� �����, ������� ������� ������������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 9,'mailmap',           'Map author/committer names and/or E-Mail addresses', '����� �������/������������ �/��� ������ ����������� ����� �����');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 9,'modules',           'Defining submodule properties', '����������� ������� ���������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 9,'repository-layout', 'Git Repository Layout', '����� ����������� git');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 9,'revisions',         'Specifying revisions and ranges for Git', '�������� ������� � ���������� ��� git');

Commit work;

INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 10,'format-bundle',         'The bundle file format', '������ ����� ������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 10,'format-chunk',          'Chunk-based file formats', '������� ������ �� ������ ����������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 10,'format-commit-graph',   'Git commit-graph format', '������ git commit-graph');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 10,'format-index',          'Git index format', '������ ������� git');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 10,'format-pack',           'Git pack format', '������ ������ git');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 10,'format-signature',      'Git cryptographic signature formats', '������� ����������������� �������� git');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 10,'protocol-capabilities', 'Protocol v0 and v1 capabilities', '����������� ��������� v0 � v1');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 10,'protocol-common',       'Things common to various protocols', '����, ����� ��� ������ ����������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 10,'protocol-http',         'Git HTTP-based protocols', 'git HTTP-���������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 10,'protocol-pack',         'How packs are transferred over-the-wire', '��� ������ ���������� �� �������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 10,'protocol-v2',           'Git Wire Protocol, Version 2', '�������� git Wire, ������ 2');
 
 Commit work;
 
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 11,'askpass',                    '', '�������� ����');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 11,'askyesno',                   '', '��/���?');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 11,'credential-helper-selector', '', '��������-�������� �� ������� ������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 11,'credential-manager',         '', '�������� ������� ������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 11,'credential-manager-core',    '', '���� ��������� ������� ������');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 11,'credential-manager-ui',      '', '��������� ������� ������-ui');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 11,'flow',                       '', '�����');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 11,'lfs',                        '', '???');
INSERT INTO S_HLP_Git (CODHLPG, ID_IND,GitKom, L_V, R_V) VALUES (gen_id(GEN_HLPG, 1), 11,'update-git-for-windows',     '', '����������-git-���-Windows');

 Commit work;