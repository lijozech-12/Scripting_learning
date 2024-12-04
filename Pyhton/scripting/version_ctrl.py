import git 

repo = git.Repo('/path/to/repo')
repo.git.add('file.txt')
repo.index.commit('Added file.txt')