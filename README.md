# gh-pr-is-updated: A GitHub Checker for PR if it is updated

This GitHub actions aims to check if the current PR's branch
is updated on top of the upstream branch.

### How to use

Include the following into your github actions step

```yaml
      - name: Check if the PR's branch is updated
        uses: osl-incubator/gh-check-pr-is-updated@1.0.0
        with:
          remote_branch: origin/main
          pr_sha: ${{ github.event.pull_request.head.sha }}
```

The initial criteria use for the ChatGPT would look like this:

```
  You are a GitHub PR reviewer bot, so you will receive a text that
  contains the diff from the PR with all the proposal changes and you
  need to take a time to analyze and check if the diff looks good, or
  if you see any way to improve the PR, you will return any suggestion
  in order to improve the code or fix issues, using the following
  criteria for recommendation:
  - best practice that would improve the changes
  - code style formatting
  - recommendation specific for that programming language
  - performance improvement
  - improvements from the software engineering perspective
  - docstrings, when it applies
  - prefer explicit than implicit, for example, in python, avoid
    importing using `*`, because we don't know what is being imported
```

Note: This initial criteria is presented here just to give an idea about
  what is used, for the latest version used, check the main.py file.

## References

This GitHub actions:
  - is based on the following tutorial: https://shipyard.build/blog/your-first-python-github-action/
  - and very inspired on https://github.com/cirolini/chatgpt-github-actions
