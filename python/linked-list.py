class Node(object):
	"""docstring for Node"""
	def __init__(self, data):
		self.data = data
		self.left = None
		self.right = None

def main():
	node = Node(4)
	node.left= Node(44)
	node.right = Node(40)
	node.left.right = Node(5)
	node.left.left = Node(50)
	
	

	print(node)
	print(node.data)
	print(node.left.data)
	print(node.right.data)
	print(node.left.right.data)
	print(node.left.left.data)
	print(__name__)
	


if __name__ == '__main__':
		main()	
		
		