all: get dash

get:
	wget -r -l 1 -P docsrc -nH http://knexjs.org
	sed -i .bak 's|<script type="text/javascript" src="assets/ga.js"></script>||g' docsrc/index.html

dash: ./docsrc/index.html
	dashing build
	open knex.docset

clean:
	rm -rf docsrc
	rm -rf knex.docset