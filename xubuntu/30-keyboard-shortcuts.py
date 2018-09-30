import shutil


XFCE4_KEYBOARD_SHORTCUTS_FILE = '/home/uozu/.config/xfce4/xfconf/' + \
    'xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml'


def main():
    # Backup original file :)
    shutil.copy(XFCE4_KEYBOARD_SHORTCUTS_FILE,
        XFCE4_KEYBOARD_SHORTCUTS_FILE + '.bak')

    # Super/Windows Key-q to close stuff
    insert_line(XFCE4_KEYBOARD_SHORTCUTS_FILE,
        '<property name="&lt;Super&gt;q" type="string" value="close_window_key"/>',
        [
        '<property name="xfwm4" type="empty">',
        '<property name="custom" type="empty">',
        '<property name="override" type="bool" value="true"/>'
        ])

    # Ctrl-printscreen to region printscreen
    insert_line(XFCE4_KEYBOARD_SHORTCUTS_FILE,
        '<property name="&lt;Primary&gt;Print" type="string" value="xfce4-screenshooter -r"/>',
        ['<property name="Print" type="string" value="xfce4-screenshooter -f"/>'])


def insert_line(inpath, string, matches, outpath=None, match_indent=True,
    insert_before=False):
    """ Insert a string into the given file after the supplied matches are found.

        Parameters:
            inpath:  file to read
            string:  string to insert
            matches: List of strings to match in input file. Once each string
                     has been found once, the 'string' parameter will be
                     inserted. The match strings are searched for on a line by
                     line basis.
            outpath: file to write to. If None, inpath is used.
            match_indent:
                     Inserted string matches surrounding indent
            insert_before:
                     String is inserted before the last match. Default is after.

        Raises:
            Exception if not all matches found
    """
    assert(len(matches) > 0)
    if outpath is None:
        outpath = inpath
    matches_idx = 0
    insert_complete = False
    with open(inpath) as infile:
        with open(outpath, 'w') as outfile:
            for line in infile:
                out_line = line
                if not insert_complete:
                    if matches[matches_idx] in line:
                        matches_idx += 1
                    if matches_idx == len(matches):
                        insert_complete = True
                        ins_line = leading_whitespace(line) + string + '\n'
                        if insert_before:
                            out_line = ins_line + line
                        else:
                            out_line = line + ins_line
                outfile.write(out_line)
    if not insert_complete:
        raise Exception("Insert line failed.\nFile: %s\nString: %s\nMatch idx: %d" % (
            inpath, string, matches_idx))


def leading_whitespace(line):
    """ Return the leading whitespace of the given string """
    indent = ''
    for ch in line:
        if ch == '\t' or ch == ' ':
            indent += ch
        else:
            break
    return indent


if __name__ == '__main__':
    main()
