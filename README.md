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

## References

This GitHub actions:
  - is based on the following tutorial: https://shipyard.build/blog/your-first-python-github-action/
  - and very inspired on https://github.com/cirolini/chatgpt-github-actions
