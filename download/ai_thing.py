#!/usr/bin/env python3
# import sys

# if len(sys.argv) > 1:
#     command = sys.argv[1]
#     print(command)
# else:
#     print("Usage: ai_thing <command>")

#!/usr/bin/env python3
import sys

if len(sys.argv) > 1:
    command = sys.argv[1]
    confirmation_message = f"Are you sure you want to execute this command? (y/N): {command}"
    print(f"{confirmation_message}\n{command}")
else:
    print("Usage: ai_thing <command>")
    print("USAGE_MESSAGE")
