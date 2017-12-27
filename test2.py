import os

# 获取path下的所有的以.smali结尾的文件
allfile = []


def getallsmalifill(path):
    allfilelist = os.listdir(path)
    for file in allfilelist:
        filepath = os.path.join(path, file)
        if os.path.isdir(filepath):
            getallsmalifill(filepath)
        if os.path.splitext(file)[1] == '.smali':
            allfile.append(filepath)
            # print(allfile)
    return allfile


# 获取.smali文件中的opcode
def getOpcode(path, txtpath, api_txtpath):
    # with open(path, 'r', encoding='UTF-8') as f:
    f = open(path, encoding='UTF-8')
    contents = f.readlines()
    f.close()
    for i in range(len(contents) - 1, -1, -1):
        if contents[i] == '\n':
            contents.pop(i)
    contents = list(map(str.strip, contents))
    l = []
    r = []
    all_list = []
    for con in contents:
        s_opcode = con.split(' ')[0]
        l.append(s_opcode)
    return mapInstruct(l, txtpath)


# 读取opcode.txt文件,将其转换为字典
def readOptxt(path):
    with open(path, 'r', encoding='UTF-8')as f:
        dict = {}
        instructs = f.readlines()
        for instruct in instructs:
            (key, value) = instruct.split(':')
            dict[key] = value.strip()
    return dict


# 读取API.txt文件，将其转换成字典
def readAPItxt(path):
    with open(path, 'r', encoding='UTF-8')as f:
        dict = {}
        methods = f.readlines()
        for method in methods:
            (key, value) = method.split(' ')
            dict[key] = value.strip()
    return dict


# 将opcode与MRGITPV一一对应
def mapInstruct(list, txtpath):
    instruct_list = []
    for l in list:
        instruct_dict = readOptxt(txtpath)
        if l in instruct_dict.keys():
            instruct_list.append(instruct_dict[l])
    return instruct_list


# 将API与自定义字母一一对应
def mapAPI(list, api_txtpath):
    method_list = []
    for m in list:
        api_dict = readAPItxt(api_txtpath)
        if m in api_dict.keys():
            method_list.append(api_dict[m])
    return method_list


# 得到每一个.apk文件包含的所有.smali文件中的操作码的简称的集合的列表
def getOpcodelist(path, txtpath, api_txtpath):
    allfilespath = getallsmalifill(path)
    opcode_list = []
    for filepath in allfilespath:
        op_lists = getOpcode(filepath, txtpath, api_txtpath)
        for op_list in op_lists:
            opcode_list.extend(op_list)
    return opcode_list


if __name__ == '__main__':
    opcode_txt_path = './opcode.txt'
    api_path = './API.txt'
    mal_rootpath = 'G:\\machinelearning\\train_mal'
    ben_rootpath = 'G:\\machinelearning\\train_ben'
    i = 0
    for mal_file in os.listdir(mal_rootpath):
        i = i + 1
        # if i >= 8:
        m_path = os.path.join(mal_rootpath, mal_file)
        print(m_path)
        opcode_list = getOpcodelist(m_path, opcode_txt_path, api_path)
        # print(opcode_list)
        with open('./instruct_txt/mal_txt/mal_' + str(i) + '.txt', 'w') as f:
            for op in opcode_list:
                f.write(op)
        allfile = []  # 已经得到所有的Malware文件下的.smali中七类操作码
        print(i)








