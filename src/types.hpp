#pragma once
#include <selene.h>
#include <SFML/Graphics.hpp>

namespace bridge {
  void setDefinedClasses(sel::State &state) {
    // Small wrapper for sf::Vector2
    state["Vector"].SetClass<sf::Vector2<double>, double, double>(
      "x", &sf::Vector2<double>::x,
      "y", &sf::Vector2<double>::y
    );
  }
}
