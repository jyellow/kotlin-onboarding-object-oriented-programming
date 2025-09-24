% Example usage
import jetbrains.kotlin.course.alias.card.*
import jetbrains.kotlin.course.alias.util.*

% Create a factory
factory = IdentifierFactory();

% Create some words
words = [Word("hello"), Word("world")];

% Create a card
card = Card(factory.uniqueIdentifier(), words);
