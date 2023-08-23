#!/usr/bin/python3
# -*- coding:utf-8 -*-

from importlib import reload
import os
import sys

# https://pydoc.dev/mistletoe/latest/index.html
import mistletoe   # markdown
from mistletoe.block_token import Heading, CodeFence as CodeBlock

reload(sys)
#sys.setdefaultencoding("utf-8")

def print_trace(*objects):
    print(*objects, file=sys.stderr)

def md2sh(infile, outfile=""):
    mdfile = os.path.abspath(os.path.expanduser(infile))
    shfile = os.path.abspath(os.path.expanduser(outfile))
    # read input file
    with open(mdfile, "rt", buffering=512000, encoding="utf-8") as fin:
        doc = mistletoe.Document(fin)
        # init shell script header
        codelines = [ "#!/bin/sh\n\n" ]
        # patch: last execute command about kill terminal or reboot
        endline = ""
        for node in doc.children:
            # extract heading
            if isinstance(node, Heading):
                #???bug: node.content always constant value
                codelines.append("# " + node.children[0].content + "\n")
            # extract code block
            elif isinstance(node, CodeBlock):
                #print_trace(node.language)
                #print_trace(node.content)
                for line in node.content.splitlines():
                    #print_trace(line)
                    if line=="": continue
                    # patch: last execute command about kill terminal or reboot
                    if line.startswith("% killall Terminal"):
                        if endline=="":
                            endline = "killall Terminal;\n"
                        continue
                    elif line.startswith("% sudo shutdown"):
                        endline = "sudo shutdown -r now;\n"
                        continue
                    # add code line
                    elif line.startswith("% "):
                        #print_trace(line)
                        codelines.append(line[2:] + "\n")
        # patch: last execute command about kill terminal or reboot
        codelines.append(endline)
    # write output file
    with open(shfile, "wt", encoding="utf-8") as fo:
        fo.writelines(codelines)

def main(argv, env):
    print_trace("argn: ", len(argv))
    print_trace("argv: ", argv)
    print_trace("env: ", env)
    md2sh(infile="MacOS系统设置篇.md", outfile="macos-setting.0.sh")

if __name__ == "__main__":
    main(argv=sys.argv, env=os.environ._data)
