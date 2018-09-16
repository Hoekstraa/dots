task :asciidoc_compile [:file] do |t, args|
	generate=
		'asciidoctor -a nofooter #{args.file}.adoc;'
	puts generate
end
