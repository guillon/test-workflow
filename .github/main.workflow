workflow "Check Repository Health" {
  on = "push"
  resolves = ["Check"]
}

action "Check" {
  uses = "./.github/action-check"
  env = {
      IN_ACTION = "Check"
  }
  args = []
}