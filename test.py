import os
txt_path = './opcode.txt'
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
    return allfile

#获取.smali文件中的opcode
def getOpcode(path, txtpath):
    with open(path, 'r') as f:
        contents = f.readlines()
        for i in range(len(contents)-1, -1, -1):
            if contents[i] == '\n':
                contents.pop(i)
        contents = list(map(str.strip,contents))
        for i in range(len(contents) - 1, -1, -1):
               if contents[i].startswith(('.', '#', '&', ':')):
                contents.remove(contents[i])
        l = []
        for con in contents:
            s = con.split(' ')[0]
            l.append(s)
        return mapInstruct(l, txtpath)
#读取opcode.txt文件,将其转换为字典
def readOptxt(path):
    with open(path, 'r')as f:
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
if __name__ == '__main__':
    rootpath = ''
    path = './BaseBrid_616.apk'
    allfilespath = getallsmalifill(path)
    #已经得到了第一个.apk文件的opcode序列
    opcode_list = []
    for filepath in allfilespath:
        op_lists = getOpcode(filepath, txt_path)
        for op_list in op_lists:
            opcode_list.extend(op_list)
    print(opcode_list)
    # testfilepath = allfile[0]#获取第一个文件中的第一个.smali文件
    # op = getOpcode(testfilepath, txt_path)#得到第一个.smali文件中的所有操作码
    # print(op)
    # l = mapInstruct(op,txt_path)#得到了第一个.smali文件的包括在七类操作码简写中的一一对应的列表
    # print(l)






