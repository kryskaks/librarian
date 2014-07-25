import os
import shell

def main():
	print 'Started database initialization'
	shell.init_db()
	print 'Tables are created'
	print 'Started data import'
	shell.fill_data()
	print 'Database is successfully initialized'
	print 'Try to run server:'
	os.system('python run.py')

if __name__ == '__main__':
	main()