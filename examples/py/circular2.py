class A(object):
    def __init__(self, name, parent=None):
        self.name = name
        self.parent = parent
        self.children = set()
    def __del__(self):
        print("delete", self.name)
def main():
    a = A(name=1)
    a.children.add(A(name=2, parent=a))
    print("end")
if __name__ == "__main__":
    main()
    


		