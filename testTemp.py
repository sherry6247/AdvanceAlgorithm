# import os
#
# #获取path下的所有的以.smali结尾的文件
# allfile = []
# def getallsmalifill(path):
#     allfilelist = os.listdir(path)
#     for file in allfilelist:
#         filepath = os.path.join(path,file)
#         if os.path.isdir(filepath):
#             getallsmalifill(filepath)
#         if os.path.splitext(file)[1] == '.smali':
#             allfile.append(filepath)
#         # print(allfile)
#     return allfile
# #获取.smali文件中的opcode
# def getOpcode(path, txtpath):
#     with open(path, 'r', encoding='UTF-8') as f:
#         contents = f.readlines()
#         for i in range(len(contents)-1, -1, -1):
#             if contents[i] == '\n':
#                 contents.pop(i)
#         contents = list(map(str.strip,contents))
#         # for i in range(len(contents) - 1, -1, -1):
#         #        if contents[i].startswith(('.', '#', '&', ':')):
#         #         contents.remove(contents[i])
#         l = []
#         for con in contents:
#             s = con.split(' ')[0]
#             l.append(s)
#         return mapInstruct(l, txtpath)
# #读取opcode.txt文件,将其转换为字典
# def readOptxt(path):
#     with open(path, 'r', encoding='UTF-8')as f:
#         dict = {}
#         instructs = f.readlines()
#         for instruct in instructs:
#             (key, value) = instruct.split(':')
#             dict[key] = value.strip()
#     return dict
# #将opcode与MRGITPV一一对应
# def mapInstruct(list,txtpath):
#     instruct_list = []
#     for l in list:
#         instruct_dict = readOptxt(txtpath)
#         if l in instruct_dict.keys():
#             instruct_list.append(instruct_dict[l])
#     return instruct_list
# #得到每一个.apk文件包含的所有.smali文件中的操作码的简称的集合的列表
# def getOpcodelist(path, txtpath):
#     allfilespath = getallsmalifill(path)
#     opcode_list = []
#     for filepath in allfilespath:
#         op_lists = getOpcode(filepath, txtpath)
#         for op_list in op_lists:
#             opcode_list.extend(op_list)
#     return opcode_list
# if __name__ == '__main__':
#     txt_path = './opcode.txt'
#     g_path = 'G:/test'
#     i = 0
#     for path in os.listdir(g_path):
#         i = i + 1
#         m_path = os.path.join(g_path, path)
#         print(m_path)
#         opcode_list = getOpcodelist(m_path, txt_path)
#         print(opcode_list)
#         with open('./instruct_txt/test/test_' + str(i) + '.txt', 'a') as f:
#             for op in opcode_list:
#                 f.write(op)
#         allfile = []

#unigram和bigram计数
        #方法一
# class NGram(object):
#     def __init__(self, n):
#         self.n = n
#         self.unigram = {}
#         self.bigram = {}
#     def ngram(self, words):
#         if self.n == 1:
#             for word in words:
#                 if word not in self.unigram:
#                     self.unigram[word] = 1
#                 else:
#                     self.unigram[word] = self.unigram[word] + 1
#         if self.n == 2:
#             num = 0
#             stri = ''
#             for i in words:
#                 num = num + 1
#                 if num  == 2:
#                     stri = stri + " "
#                 stri = stri + i
#                 if num == 2:
#                     if stri not in self.bigram:
#                         self.bigram[stri] = 1
#                     else:
#                         self.bigram[stri] = self.bigram[stri] + 1
#                     num = 0
#                     stri = ''
    #方法二
import re

# import itertools
#
# str = 'abcd'
# list1 = list(''.join(x) for x in itertools.permutations(str, 2))
# print(list1)
# 全排列函数
# def strPermutations(alphbet):
#     alp_list = alphbet.split(',')
#     for i in range(len(alp_list)):
#         for l in alp_list:
#             alp_list.append(alp_list[i] + l)
#     # if n == 0:
#     return alp_list
#     # else:
#     #     for letter in alp_list:
#     #         strPermutations(alphbet, n - 1)
#
# if __name__ == '__main__':
#     str = 'a,b,c'
#     print(str.split(','))
# #     print(strPermutations(str))
# str = "M,R,G,I,T,P,V"
# s_list = str.split(',')
# list_s = []
# for i in s_list:
#     for j in s_list:
#         s = i + j
#         list_s.append(s)
# lists = s_list + list_s
# print(lists)
# with open('./bigram_list.txt', 'w')as f:
#     for s in lists:
#         f.write(s + ' ')
# import json
# with open('./bigram_list.txt', 'r')as f:
#     s = f.read().split(' ', 55)
#     print(s[0:7])
#     print(s[7:])
# mapNgram = {
#     'unigram': s[0:7],
#     'bigram' : s[7:]
# }
# with open('./bigram_list_json', 'w')as f:
#     json_file = json.dumps(mapNgram, ensure_ascii=False, sort_keys=True, indent=4, separators=(',', ': '))
#     f.write(json_file)