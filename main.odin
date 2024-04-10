package lint

Layer :: enum u8 {
  Data = 0,
  Domain = 1,
  Ui = 2,
  Routing = 3
}

// Represents a table of allowed dependencies.
// Having Allowed_Dependencies[x][y] == 1 means that 'x' is allowed to depend on 'y'
Allowed_Dependencies :: matrix[4,4]u8{
  // Data | Domain | Ui | Routing
  1, 1, 0, 0, // Data
  1, 1, 0, 0, // Domain
  0, 1, 1, 0, // Ui
  0, 1, 1, 1  // Routing
}

check_valid_layer_dependencies :: proc() {
  // TODO no data in ui
  // TODO no data in domain
  // TODO no ui in domain
}

main :: proc() {

}
