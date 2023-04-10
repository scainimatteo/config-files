import requests
from os import environ
from os.path import expanduser

home = expanduser('~')

resp = requests.get('http://ipinfo.io/ip')
ip = resp.text
routerip = "export IP='"+ip+"'"

file = open(f'{home}/.private_variables', 'r')

localip = file.readline()

file.close()

if localip != routerip:
    file = open(f'{home}/.private_variables', 'w')

    sshport = environ['SSH_PORT']
    r6smail = environ['R6SMAIL']
    r6spass = environ['R6SPASS']
    r6ssport = environ['R6SSPORT']
    r6stoken = environ['R6STOKEN']
    m2_home = environ['M2_HOME']
    m2 = environ['M2']
    path = environ['PATH']

    newtext = f"{routerip}\nexport SSH_PORT='{sshport}'\nexport R6SMAIL='{r6smail}'\nexport R6SPASS='{r6spass}'\nexport R6SSPORT='{r6ssport}'\nexport R6STOKEN='{r6stoken}'\nexport M2_HOME='{m2_home}'\nexport M2='{m2}'\nexport PATH='{path}'"
    file.write(newtext)
    file.close
    print(f'ip: {ip}')
    print("file modificato")
