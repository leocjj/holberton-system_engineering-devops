#!/usr/bin/python3
"""
Python script that, using this REST API
(https://jsonplaceholder.typicode.com/), for a given employee ID, returns
information about his/her TODO list progress.
"""

if __name__ == '__main__':
    import requests
    from sys import argv

    r = requests.get('https://jsonplaceholder.typicode.com/users/{}'.
                     format(argv[1]))
    name = r.json().get('name')

    r = requests.get('https://jsonplaceholder.typicode.com/todos?userId={}'.
                     format(argv[1]))
    data = r.json()
    done = total = 0
    for task in data:
        total += 1
        if task.get('completed'):
            done += 1

    print('Employee {} is done with tasks({}/{}):'.format(name, done, total))
    for task in data:
        if task.get('completed'):
            print('\t {}'.format(task.get('title')))
