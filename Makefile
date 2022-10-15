
p4_program = *.p4
p4c = sudo docker run --rm -v /home/user/p4c:/cwd -w /cwd p4lang/p4c p4c

#compile p4 program
build:
	$(p4c) --arch v1model -o build/bmv2.json --p4runtime-files build/p4info.txt $(p4_program)



#clean all files under "build/" directory
clean:
	sudo rm -r build/
