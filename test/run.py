import argparse
import re
import os

re_modname = re.compile(r'module ([A-Za-z0-9_]+)')

# verilator related command lines
warn_flags = ' -Wno-UNUSED -Wno-COMBDLY'
verilator = 'verilator -Wall --cc --exe verilator/sim.cpp'
verilator += ' --Mdir build -Iinclude'
verilator += warn_flags
verilinter = 'verilator -Wall --lint-only -Iinclude'
verilinter += warn_flags

# 'make' command
make_cmd = 'make -C build'

def detect_dir(src):
  ans = set()
  ans.add('-I' + src)
  for r, d, f in os.walk(src):
    for i in f:
      if i.endswith('.v'):
        if not d:
          ans.add('-I' + r)
        else:
          for name in d:
            ans.add('-I' + os.path.join(r, name))
        break
  return ' ' + ' '.join(ans)

def get_mod_name(file):
  with open(file) as f:
    ans = re_modname.findall(f.read())
    return ans[0]

def run_cmd(cmd):
  if os.system(cmd):
    exit(1)

def clean():
  cmd = 'rm -f build/*'
  run_cmd(cmd)

def lint(dirs, file):
  cmd = '{}{} {}'.format(verilinter, dirs, file)
  run_cmd(cmd)

def compile(dirs, file, mod_name):
  cmd = '{}{} {} -CFLAGS "-DMODULE_NAME=V{}"'.format(
      verilator, dirs, file, mod_name)
  run_cmd(cmd)

def make(mod_name):
  cmd = '{} -f V{}.mk'.format(make_cmd, mod_name)
  run_cmd(cmd)

def run(mod_name, is_interactive=False):
  cmd = 'build/V{}'.format(mod_name)
  if is_interactive:
    cmd += ' -i'
  run_cmd(cmd)

if __name__ == '__main__':
  # initialize argument parser
  parser = argparse.ArgumentParser()
  parser.formatter_class = argparse.RawTextHelpFormatter
  parser.description = 'A Verilog testbench launcher based on Verilator'
  parser.add_argument('file', help='specify testbench file or action\n' +
                      'supported action: clean')
  parser.add_argument('-i', '--interactive', action='store_true',
                      help='enable interactive mode')
  parser.add_argument('-l', '--lint', action='store_true',
                      help='lint only')
  parser.add_argument('-s', '--src', default='../src',
                      help='specify project\'s source file directory')
  parser.add_argument('-v', '--version', action='version',
                      version='%(prog)s version 0.0.1')
  # parse arguments
  args = parser.parse_args()
  # read file name
  file = os.path.abspath(args.file)
  # change current working directory
  os.chdir(os.path.dirname(os.path.abspath(__file__)))
  # check option
  if args.file.lower() == 'clean':
    clean()
  else:
    # compile and run
    mod_name = get_mod_name(file)
    dirs = detect_dir(args.src)
    if args.lint:
      lint(dirs, file)
    else:
      compile(dirs, file, mod_name)
      make(mod_name)
      run(mod_name, args.interactive)
