


all: simple_digraph.svg simple_digraph_plus_title.svg simple_digraph_plus_color.svg  simple_digraph_plus_edge_label.svg \
	methane.svg


clean: 
	rm *.svg


simple_digraph.svg: simple_digraph.dot
	dot -Tsvg simple_digraph.dot > simple_digraph.svg


#G means graph representing the entire diagram
#fontcolor and label will be placed into the svg
simple_digraph_plus_title.svg: simple_digraph.dot
	dot -Tsvg simple_digraph.dot  \
		-Gfontcolor=red \
		-Glabel="My favorite letters" \
		> simple_digraph_plus_title.svg


# N means node representing all nodes
# overrides label and color
simple_digraph_plus_color.svg: simple_digraph.dot
	dot -Tsvg simple_digraph.dot \
	       	-Nfontcolor=red \
		-Nlabel="My favorite letters" \
		-Nshape=rect \
		> simple_digraph_plus_color.svg




# E means edge representing all nodes
# overrides label and color
simple_digraph_plus_edge_label.svg: simple_digraph.dot
	dot -Tsvg simple_digraph.dot \
	       	-Ecolor=red \
		-Elabel="My favorite letters" \
		-Earrowhead=diamond \
		> simple_digraph_plus_edge_label.svg



methane.svg: methane.dot
	dot -Tsvg methane.dot -o methane.svg
