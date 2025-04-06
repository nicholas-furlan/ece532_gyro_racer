import os
import fnmatch

# Replace with your project path
root = "."
output_file = "tree.txt"

# Add patterns to exclude (supports wildcards)
exclude_patterns = [
    '.git',
    '.gitignore',
    '.DS_Store',
    '__pycache__',
    '*.pyc',
    '*.pyo',
    '*.pyd',
    '*.so',
    '*.dll',
    '*.dylib',
    '*.log',
    '*.jou',
    '*.str',
    '*.zip',
    '*.debug',
    '*.backup.*',
    '.metadata',
    'Debug',
    'Release',
    '.settings',
    '*.o',
    '*.d',
    '*.elf',
    '*.bin',
    '*.map',
    '*.out',
    'RemoteSystemsTempFiles',
    'SDK.log',
    'webtalk',
    'standalone*',
    'bsplib',
    'lib',
    '.runs',
    '.cache',
    '.hw',
    '.Xil',
    '.gen',
    '.gitmodules',
]

# Add specific paths to include but skip their contents
# Use relative paths from the root directory with wildcards
include_dir_skip_contents = [
    '**/bd/design_1',
    '**/bd/mref',
    '*.ip_user_files',
    'ip/ip_repo/gyro_reader_1.0',
    'ip/managed_ip_project',
    'ip_keyboard/axi_ps2_1.0',
]

def should_exclude(name):
    return any(fnmatch.fnmatch(name, pattern) for pattern in exclude_patterns)

def should_skip_contents(path, name):
    # Convert path to relative path from root
    rel_path = os.path.relpath(path, root)

    # Check if the full path matches any pattern
    for pattern in include_dir_skip_contents:
        if fnmatch.fnmatch(rel_path, pattern):
            return True
    return False

def print_tree(start_path, prefix=''):
    tree_lines = []
    try:
        # Get all files and directories
        all_items = os.listdir(start_path)

        # Separate directories and files
        directories = []
        files = []

        for name in all_items:
            if should_exclude(name):
                continue

            path = os.path.join(start_path, name)
            if os.path.isdir(path):
                directories.append(name)
            else:
                files.append(name)

        # Sort both lists
        directories.sort()
        files.sort()

        # Process directories first
        for i, name in enumerate(directories):
            path = os.path.join(start_path, name)
            is_last = (i == len(directories) - 1 and not files)  # Last if it's the last directory and there are no files
            connector = '└── ' if is_last else '├── '
            tree_lines.append(prefix + connector + name)

            if should_skip_contents(path, name):
                # Add a placeholder to indicate contents are skipped
                extension = '    ' if is_last else '│   '
                tree_lines.append(prefix + extension + '└── [contents skipped]')
            else:
                extension = '    ' if is_last else '│   '
                tree_lines += print_tree(path, prefix + extension)

        # Then process files
        for i, name in enumerate(files):
            is_last = (i == len(files) - 1)
            connector = '└── ' if is_last else '├── '
            tree_lines.append(prefix + connector + name)

    except PermissionError:
        return tree_lines

    return tree_lines

tree_result = print_tree(root)

with open(output_file, "w", encoding="utf-8") as f:
    f.write("\n".join(tree_result))

print(f"Tree saved to {output_file}")