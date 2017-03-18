#include <iostream>
#include <assert.h>

// Include our LUA binding
#include <selene.h>
#include "types.hpp"

int main(int argc, char** argv) {
  // Setup the Lua interpreter
  sel::State state{true};

  bridge::setDefinedClasses(state);

  state.Load(__SRC_DIR__ + "/scripts/test.lua");

  sel::Pointer<sf::Vector2<double>> position_ptr = state["position"];
  auto position = position_ptr.get();

  // Create our rendering window
  sf::RenderWindow window(sf::VideoMode(600, 300), "SFML works!");
  sf::CircleShape shape(25.f);
  shape.setFillColor(sf::Color::Green);

  while (window.isOpen())
  {
     sf::Event event;
     while (window.pollEvent(event))
     {
         if (event.type == sf::Event::Closed)
             window.close();
     }

     state["update"]();
     shape.setPosition(position->x, position->y);

     window.clear();
     window.draw(shape);
     window.display();
  }

  return 0;
}
