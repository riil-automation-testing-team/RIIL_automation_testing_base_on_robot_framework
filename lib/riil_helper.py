# coding=utf-8
import configparser
import math
import operator
import os
from functools import reduce

import cv2
import numpy as np
import xlrd
from PIL import Image


def get_data_from_excel(url):
    ff = xlrd.open_workbook(u'../../../../data/cheetah_get_element_xpath.xlsx')
    table = ff.sheet_by_index(0)
    xpath = ''
    for i in range(1, table.nrows):
        # print(table.cell(i, 0).value)
        if table.cell(i, 0).value == url:
            xpath = str(table.cell(i, 1).value)
            break
    print(xpath)
    return xpath


def get_xpath(section, name, product):
    cf = configparser.ConfigParser()
    if product == 'cheetah':
        cf.read(u'../../../../data/cheetah_element_xpath.conf', encoding="utf-8-sig")
    elif product == 'relax':
        cf.read(u'../../../../../data/relax_element_xpath.conf', encoding="utf-8-sig")
    else:
        cf.read(u'../../../../data/bmc_element_xpath.conf')
    # print(cf.get(section, name))
    return cf.get(section, name)


def get_common_search(search_type, search_element_name):
    print("//" + search_type + "[contains(text(), '" + search_element_name + "')]")
    return str("//" + search_type + "[contains(text(), '" + search_element_name + "')]")

def match_img(image, Target, value,flag):
    print(os.path.dirname(image))
    print(os.path.dirname(Target))
    print(os.path.exists(Target))
    img_rgb = cv2.imread(image)
    img_gray = cv2.cvtColor(img_rgb, cv2.COLOR_BGR2GRAY)
    template = cv2.imread(Target, 0)
    w, h = template.shape[::-1]
    res = cv2.matchTemplate(img_gray, template, cv2.TM_CCOEFF_NORMED)
    threshold = value
    loc = np.where(res >= float(threshold))
    print("loc = ",len(loc[0]))
    if  flag == 'exist':
        if len(loc[0]) == 0:
            print("未找到")
            return False
        else:
            return True
    else:
        if len(loc[0]) == 0:
            return True
        else:
            return False
def image_cmp(act,exp):
    image1 = Image.open(act)
    image2 = Image.open(exp)
    h1 = image1.histogram()
    h2 = image2.histogram()
    differ = math.sqrt(reduce(operator.add, list(map(lambda a, b: (a - b) ** 2, h1, h2))) / len(h1))
    return differ

def image_cut_special(path,out,left,top,right,down):
    print(os.path.dirname(path))
    # img = cv2.imread(path)
    # height = img.shape[0]
    # width = img.shape[1]
    # print(height, width)
    img = Image.open(path)  # 打开当前路径图像
    width,height=img.size
    left = int(left)
    top = int(top)
    right = int(right)
    down = int(down)
    box1 = (left, top , width-right, height-down)  # 不选中
    image1 = img.crop(box1)  # 图像裁剪
    image1.save(out)  # 存储裁剪得到的图像



# if __name__ == '__main__':
#     match_img('../lib/Highlight.png', '../lib/move_in.png', 0.9)
# if __name__ == '__main__':
#     image_cut_special('./spread.png','./spread.png')