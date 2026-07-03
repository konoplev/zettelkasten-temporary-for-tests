2023-11-01 / 10:53

Status: #idea
Tags: 

# key properties of data

rawness, immutability, and perpetuity (or the “eternal trueness of data”)

### Rawness
Storing raw data is hugely valuable because you rarely know in advance all the questions you want answered. By keeping the rawest data possible, you maximize your ability to obtain new insights, whereas summarizing, overwriting, or deleting information limits what your data can tell you. 

#### Rules
##### Unstructured data is rawer than normalized data
If you parse data and normalize to some form, store what you have as an input. If your parsing is wrong, you loose data

##### More information doesn’t necessarily mean rawer data

Instead of saving the whole html page you can extract only necessary info from it (you probably don’t need all JavaScript and all css)

### immutability

The advantages:

- Human-fault tolerance. If bad data is written, earlier (good) data units still exist.
- Simplicity. with an immutable data model you only need the ability to append new data units to the master dataset. This doesn’t require an index for your data, which is a huge simplification.

### Data is eternally true

Immutability wouldn’t make sense without this property, and you saw how tagging each piece of data with a timestamp is a practical way to make data eternally true.

# References

[[Big data]]