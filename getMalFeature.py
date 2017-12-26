import itertools
#得到恶意代码序列的特征序列

#首先得到Ngram的所有序列
def getPermutations(n, str):
    ngram_list = list(itertools.permutations(str, n))
