2023-02-17 / 15:57

Status: #idea
Tags: [[ml]] [[python]] 

# Validating csv data with Pandas

Example:

```
df = pd.read_csv('WA_Fn-UseC_-Telco-Customer-Churn.csv')
len(df) # check that there are number of lines that we expect
df.head().T # check first 5 lines
```

### df.dtypes

print types and compare them with `df.head()`. Is it what we expect. If, for example, some field looks like `int64` but `df` says it's `object` then probably there is some field that decoded in some strange way or contains space.  

# References

[[ML zoom-camp]]