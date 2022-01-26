// CPP Program to Print need matrix
#include <iostream>
#include <string.h>
#include <vector>
// total number of process
#define P 5
// total number of resources
#define R 3

using namespace std;

int main()
{

    // allocated matrix of size P*R
    int allocated[P][R] = {{0, 1, 0},
                           {2, 0, 0},
                           {3, 0, 2},
                           {2, 1, 1},
                           {0, 0, 2}};

    // max matrix of size P*R
    int max[P][R] = {{7, 5, 3},
                     {3, 2, 2},
                     {9, 0, 2},
                     {2, 2, 2},
                     {4, 3, 3}};

    // safe vector for displaying a safe-sequence
    vector<int> safe;

    // need matrix of size P*R
    int need[P][R];
    for (int i = 0; i < P; i++)
        for (int j = 0; j < R; j++)
            need[i][j] = max[i][j] - allocated[i][j];

    for (int i = 0; i < P; i++)
    {
        for (int j = 0; j < R; j++)
        {

            cout << need[i][j];
        }
        cout << "\n";
    }
    return 0;
}
