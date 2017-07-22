# Design Patterns In Ruby

## Composite Pattern

Composite pattern suggests that we build up bigger objects from small sub-objects, which might themselves be made up of still smaller sub-sub-objects.
The Composite pattern lets us build arbitrarily deep trees of objects in which we can treat any of the interior nodes—the composites—just like any of the leaf nodes.

To build the Composite pattern, you need three moving parts:
![composite diagram](src/composite-1.png)
- First, you need a common interface or base class for all of your objects – component.
- Second, you need one or more leaf classes — that is, the simple, indivisible building blocks of the process. It should, of course, implement the Component interface.
- Third, we need at least one higher-level class, called composite. It is a component, but it is also a higher-level object that is built from subcomponents.

The error that crops up so frequently with the Composite pattern is assuming that the tree is only one level deep—that is, assuming that all of the child components of a composite object are, in fact, leaf objects and not other composites.
