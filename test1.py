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
def getOpcode(path, txt_dict, api_dict):
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
    allop_list = []
    allap_list = []
    for con in contents:
        s_opcode = con.split(' ')[0]
        l.append(s_opcode)
        t_method = con.split(' ')[-1]
        r.append(t_method)
    allop_list.append(mapInstruct(l, txt_dict))
    allap_list.append(mapAPI(r, api_dict))
    return allop_list, allap_list


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
def mapInstruct(list, txt_dict):
    instruct_list = []
    for l in list:
        if l in txt_dict.keys():
            instruct_list.append(txt_dict[l])
    return instruct_list

# 将API与自定义字母一一对应
def mapAPI(list, api_dict):
    method_list = []
    for m in list:
        for k in api_dict.keys():
            if k in m:
                method_list.append(api_dict[k])
    # print(method_list)
    return method_list

# 得到每一个.apk文件包含的所有.smali文件中的操作码的简称的集合的列表
def getOpcodelist(path, txt_dict, api_dict):
    allfilespath = getallsmalifill(path)
    opcode_list = []
    api_list = []
    for filepath in allfilespath:
        op_lists, ap_lists = getOpcode(filepath, txt_dict, api_dict)
        for op_list in op_lists:
            opcode_list.extend(op_list)
        for ap_list in ap_lists:
            api_list.extend(ap_list)
    return opcode_list, api_list

if __name__ == '__main__':
    opcode_txt_path = './opcode.txt'
    api_path = './API.txt'
    mal_rootpath = 'G:\\machinelearning\\train_mal'
    ben_rootpath = 'G:\\machinelearning\\train_ben'
    api_dict = readAPItxt(api_path)
    opcode_dict = readOptxt(opcode_txt_path)
    i = 0
    for ben_file in os.listdir(ben_rootpath):
        all_list = []
        i = i + 1
        # if i >= 8:
        b_path = os.path.join(ben_rootpath, ben_file)
        print(b_path)
        opcode_list, ben_api_list = getOpcodelist(b_path, opcode_dict, api_dict)
        # print(opcode_list)
        # print(mal_api_list)
        with open('./feature_txt/ben_f/ben_f_' + str(i) + '.txt', 'w') as f:
            for op in opcode_list:
                f.write(op)
            f.write("\n")
            for ben in ben_api_list:
                f.write(ben)

        allfile = []  # 已经得到所有的Malware文件下的.smali中七类操作码
        print(i)








