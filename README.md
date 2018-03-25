# MicroDynamics_website_development

This is the development codes of Microdynamics website by using mkdocs.

This develop environment now:

System: Window 8 enterprise

python: 3.6.4(Lastest version)

pip: 9.0.1(install integration with python)

You need to install the **python** first, you can go to the [python offical website](https://www.python.org/downloads/) to download the lastest version installer depending on your system.

When installing the python, you have better to check the list **Add Python 3.x.x to PATH** and select installing the python package machine **pip** meanwhile.

In china, you might not be able to use the **pip** normally, you can go to your user content(for example "C:/Users/xx/"), **mkdir** a folder name **pip**, and **cd** into **pip** folder to create a flie named **pip.ini** and add 
> [global]

> index-url = https://pypi.tuna.tsinghua.edu.cn/simple

in it.


Then, use **pip install mkdocs** and "pip install mkdocs-material" to install dependence package.

Last, you can clone this package and **cd** in this repo and enter **mkdocs serve** to start a local serive. you can visit the demo in **http://127.0.0.1:8000**