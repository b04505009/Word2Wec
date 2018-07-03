# Word2Vec: Reverse Hierarchical Softmax

Analysis of 4 different structure for Word2Vec model training, including hierarchical softmax, hierarchical softmax with learning rate tuning, negative sampling, and reverse hierarchical softmax.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Run

```
cd scripts && ./demo ${MODE}
```

There are 4 mode:

1. hs: hierarchical softmax
2. hs_lr: hierarchical softmax with learning rate tuning 
3. neg: Negative Sampling with 15 negative sample
4. revhs: reverse hierarchical softmax


For example:

```
cd scripts && ./demo hs_lr
```


All the modes are sharing these parameters:
* Output Layer Structure: CBOW
* Word Vector Dimension: 300
* Context Window Size: 8
* Subsampling: 1e-4
* Thread: 1 
* Epochs: 15

For more details explained, see [our report](https://github.com/qa276390/Word2Vec/blob/master/Analysis%20for%20Hierarchical%20Softmax%20in%20Word2Vec.pdf).


## Reference


* [Word2Vec](https://code.google.com/p/word2vec/) - Google original project
* [Word2Vec by dav](https://github.com/dav/word2vec) - Shell scripts reference
* [Question Set](https://github.com/k-kawakami/embedding-evaluation) - Embedding evaluation


## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.


## Authors

* **Chung-Min Tsai** - [qa276390](https://github.com/qa276390)
* **Xi-Zhen Liu** - [b04505009](https://github.com/b04505009/)


## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

