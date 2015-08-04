#include <iostream>
#include <string>
#include <cctype>
#include <vector>
#include <algorithm>
#include <stdio.h>

// a small application which is made squeze and otherwice very long log message into a fixed width.
// It does this by only showing the procsess name, and the last part of the message

using namespace std;

int main(int argc, char *argv[])
{
    // setup
    if (argc < 3 ){
        cout << "syntax error" << endl ;
        return 1 ;
    }
    int targetLenght = stoi(string(argv[1]));
    string color1(argv[2]);
    string color2(argv[3]);

    // get rid of the first line
    string junk;
    getline(cin,junk);

    // iterate thorugh stdin and make the new journal
    string line ;
    while (getline(cin, line))
    {
        string::const_iterator procNameBegin, procNameEnd;
        int spaceCount = 0;

        // first find the process name's begining (fifth word)
        for (string::const_iterator iter = line.begin(); iter != line.end() ; iter++) {
            if (*iter == ' ')
                spaceCount++;
            else if (spaceCount >= 4) {
                procNameBegin = iter ;
                break;
            }
        }

        // then find its end
        for (string::const_iterator iter = procNameBegin; iter != line.end(); iter++) {
            if ( *iter == ' ' || *iter == '[' )
                break;
            else
                procNameEnd = iter + 1 ;
        }

        string procName(procNameBegin, procNameEnd);

        // the lenght of the process name might be larger than our target.
        if (procName.size() < targetLenght)
        {
            //callculate how much of the message we can grab.
            string message(line.end() - ( targetLenght - procName.size()) , line.end());

            // print the name plus the message
            cout << color1 << procName << color2 << " " << message << endl;
        } else {
            cout << color1 << string(procName.begin(), procName.begin() + targetLenght) << endl;
        }
    }

    return 0;
}
