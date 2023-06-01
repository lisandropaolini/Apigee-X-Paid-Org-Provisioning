analytics_region    = "us-central1"
apigee_environments = ["eval1", "eval2"]
apigee_envgroups = {
  eval = {
    environments = ["eval1", "eval2"]
    hostnames    = ["eval.api.example.com"]
  }
}