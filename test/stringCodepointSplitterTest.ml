let () =
  Sys.argv.(1)
  |> StringCodepointSplitter.split_string_by_unicode_codepoint
  |> List.iter print_endline
