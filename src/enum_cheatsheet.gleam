import gleam/float
import gleam/int
import gleam/list
import paint as p
import paint/canvas

pub fn main() {
  let spacing = 40.0
  let blue = p.colour_hex("#99CAEB")
  let pink = p.colour_hex("#ffaff3")
  let comma = p.text(",", 30) |> p.translate_y(40.0)
  let left_bracket = p.text("[", 30)
  let right_bracket = p.text("]", 30)
  let shapes = [
    p.square(40.0) |> p.fill(blue),
    p.square(40.0) |> p.fill(pink),
  ]
  |> list.intersperse(comma)
  |> list.index_map(fn(shape, index) {
       p.translate_x(shape, spacing *. int.to_float(index))
  })

  let picture = p.combine(shapes)
  canvas.display(canvas.center(picture), "#mycanvas")
}
