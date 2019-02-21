# coding=utf-8
import configparser
import xlrd
import sys


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
        cf.read(u'../../../../data/cheetah_element_xpath.conf')
    elif product == 'relax':
        cf.read(u'../../../../data/relax_element_xpath.conf')
    # print(cf.get(section, name))
    return cf.get(section, name)


def get_common_search(search_type, search_element_name):
    print("//" + search_type + "[contains(text(), '" + search_element_name + "')]")
    return str("//" + search_type + "[contains(text(), '" + search_element_name + "')]")


# if __name__ == '__main__':
#     print(get_data_from_excel())
