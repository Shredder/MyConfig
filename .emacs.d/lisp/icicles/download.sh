#wget http://www.emacswiki.org/emacs/download/icicles.el
#for i in chg cmd doc1 doc2 face fn mac mcmd mode opt var; do
#	wget http://www.emacswiki.org/emacs/download/icicles-$i.el
#done

for i in col-highlight.el crosshairs.el hexrgb.el hl-line+.el icomplete+.el lacarte.el vline.el; do
	wget http://www.emacswiki.org/emacs/download/$i
done
