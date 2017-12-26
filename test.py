import os

#获取path下的所有的以.smali结尾的文件
allfile = []
def getallsmalifill(path):
    allfilelist = os.listdir(path)
    for file in allfilelist:
        filepath = os.path.join(path,file)
        if os.path.isdir(filepath):
            getallsmalifill(filepath)
        if os.path.splitext(file)[1] == '.smali':
            allfile.append(filepath)
        # print(allfile)
    return allfile
#获取.smali文件中的opcode
def getOpcode(path, txtpath):
    # with open(path, 'r', encoding='UTF-8') as f:
    f = open(path, encoding='UTF-8')
    contents = f.readlines()
    f.close()
    for i in range(len(contents)-1, -1, -1):
        if contents[i] == '\n':
            contents.pop(i)
    contents = list(map(str.strip,contents))
    l = []
    for con in contents:
        s = con.split(' ')[0]
        l.append(s)

    return mapInstruct(l, txtpath)
#读取opcode.txt文件,将其转换为字典
def readOptxt(path):
    with open(path, 'r', encoding='UTF-8')as f:
        dict = {}
        instructs = f.readlines()
        for instruct in instructs:
            (key, value) = instruct.split(':')
            dict[key] = value.strip()
    return dict
#将opcode与MRGITPV一一对应
def mapInstruct(list,txtpath):
    instruct_list = []
    for l in list:
        instruct_dict = readOptxt(txtpath)
        if l in instruct_dict.keys():
            instruct_list.append(instruct_dict[l])
    return instruct_list
#得到每一个.apk文件包含的所有.smali文件中的操作码的简称的集合的列表
def getOpcodelist(path, txtpath):
    allfilespath = getallsmalifill(path)
    opcode_list = []
    for filepath in allfilespath:
        op_lists = getOpcode(filepath, txtpath)
        for op_list in op_lists:
            opcode_list.extend(op_list)
    return opcode_list
if __name__ == '__main__':
    txt_path = './opcode.txt'
    mal_rootpath = 'E:\\lsc\\homework\\machinelearning\\project\\AndroidMalwareClassification\\train_mal'
    ben_rootpath = 'E:\\lsc\\homework\\machinelearning\\project\\AndroidMalwareClassification\\train_ben'
    i = 0
    for mal_file in os.listdir(ben_rootpath):
        i = i + 1
        if i >= 8:
            m_path = os.path.join(ben_rootpath, mal_file)
            print(m_path)
            opcode_list = getOpcodelist(m_path, txt_path)
            with open('./instruct_txt/ben_txt/ben_' + str(i) + '.txt', 'w') as f:
                for op in opcode_list:
                    f.write(op)
            allfile = []#已经得到所有的Malware文件下的.smali中七类操作码
            print(i)








