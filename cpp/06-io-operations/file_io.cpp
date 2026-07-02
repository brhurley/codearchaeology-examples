#include <iostream>
#include <fstream>
#include <string>

int main() {
    // Writing to a file with an output file stream
    std::ofstream outFile("notes.txt");
    if (!outFile) {
        std::cerr << "Failed to open file for writing\n";
        return 1;
    }
    outFile << "Line 1: C++ file I/O\n";
    outFile << "Line 2: Using fstream\n";
    outFile << "Line 3: RAII closes the file\n";
    outFile.close();

    std::cout << "File written successfully.\n";

    // Reading the file back line by line
    std::ifstream inFile("notes.txt");
    if (!inFile) {
        std::cerr << "Failed to open file for reading\n";
        return 1;
    }

    std::string line;
    int lineNumber = 1;
    while (std::getline(inFile, line)) {
        std::cout << lineNumber << ": " << line << "\n";
        lineNumber++;
    }

    return 0;
}
