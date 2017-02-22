from fabric.api import *
from fabric.contrib.console import confirm

@task(default=True)
def doc():
    # Create the new branch
    local("git stash")
    local("cd doc && make html")
    local("git checkout gh-pages")
    local("git add doc/_build -f")
    local("git commit -m 'Automatic commit by fabric'")
    local("git push origin gh-pages")
    local("git checkout master")
    local("git stash apply")
