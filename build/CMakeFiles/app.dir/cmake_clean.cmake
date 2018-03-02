file(REMOVE_RECURSE
  "program.o"
  "libapp.pdb"
  "libapp.a"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/app.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
