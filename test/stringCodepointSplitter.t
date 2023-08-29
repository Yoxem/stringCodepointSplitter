ASCII only
  $ ./stringCodepointSplitterTest.exe abc
  a
  b
  c

Still simple but not just ASCII
  $ ./stringCodepointSplitterTest.exe «—»
  «
  —
  »

Example from the docstring of the lib
  $ ./stringCodepointSplitterTest.exe "m̄知 who you're."
  m
  ̄
  知
   
  w
  h
  o
   
  y
  o
  u
  '
  r
  e
  .
