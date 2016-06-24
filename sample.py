from four_color import load_image, make_graph, solve_four_color

fn = 'sample.png'
print('load', fn)
im = load_image(fn)
g = make_graph(im)
solve_four_color(im, g)
fn = 'out.png'
print('save', fn)
im.save(fn)
