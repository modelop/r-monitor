# Custom R-monitor example - Performance Monitor for Classification Models
This ModelOp Center monitor computes classification metrics such as **AUC**, **Accuracy**, **Precision**, **Recall**, and **F1_score**.


## Assumptions & Requirements
 - `BUSINESS_MODEL` is a **classification** model.
 - Input data must contain:
     - 1 column with **role=label** (ground truth) and **dataClass=categorical**
     - 1 column with **role=score** (model output) and **dataClass=categorical**

## Execution
1. `metrics` function instantiates R's get_metrics function to calculate a series of Performance metrics using the `label_column` and `score_column` accordingly.
2. The test results are appended to a named list such that ModelOp Center can put the metrics in a clean table visually.

## Monitor Output

```JSON
{
  "PerformanceMetrics": [
    {
      ".metric": "f_meas",
      ".estimator": "binary",
      ".estimate": 0.7344
    },
    {
      ".metric": "accuracy",
      ".estimator": "binary",
      ".estimate": 0.66
    },
    {
      ".metric": "sensitivity",
      ".estimator": "binary",
      ".estimate": 0.6528
    },
    {
      ".metric": "specificity",
      ".estimator": "binary",
      ".estimate": 0.6786
    },
    {
      ".metric": "precision",
      ".estimator": "binary",
      ".estimate": 0.8393
    }
  ]
}
```
