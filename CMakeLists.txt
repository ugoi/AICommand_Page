execute_process(
  COMMAND bash -c "cp ${CMAKE_SOURCE_DIR}/download/ai_thing.sh ~/ai_thing.sh && cp ${CMAKE_SOURCE_DIR}/download/ai_thing.py ~/ai_thing.py && (echo 'source ~/ai_thing.sh' >> ~/.zshrc || echo 'source ~/ai_thing.sh' >> ~/.bashrc)"
  RESULT_VARIABLE result
  OUTPUT_VARIABLE output
  ERROR_VARIABLE error_output
)
