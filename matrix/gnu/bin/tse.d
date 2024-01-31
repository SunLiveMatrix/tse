module matrix.gnu.bin.tse;

import std.stdio;
import std.stdint;

export class ITSEGovernance {
    void governance() {
        int[] a;      // dynamic array of ints
        int[4][3] b;  // array of 3 arrays of 4 ints each
        int[][5] c;   // array of 5 dynamic arrays of ints.
        int*[]*[3] d; // array of 3 pointers to dynamic arrays of pointers to ints
        int[]* e;     // pointer to dynamic array of ints

    }
}

export class ITSEGovernancePrimedArray {
    void write(int a, int b, int c, int d, int e) {

        auto a1 = [1,2,3];  // type is int[], with elements 1, 2, and 3
        auto a2 = [1u,2,3]; // type is uint[], with elements 1u, 2u, and 3u
        int[2] a3 = [1,2];  // type is int[2], with elements 1, and 2


    }
}

export class ITSEGovernanceAgreements {
    void getType(int type) {
        int* p;
        int[3] s;
        int[] a;

        p = s.ptr; // p points to the first element of the array s.
        p = a.ptr; // p points to the first element of the array a.

        // error, since the length of the array pointed to by p is unknown
        //s = p;

        //a = p;   // error, length unknown
        a = s;     // a points to the elements of s
        assert(a.ptr == s.ptr);

        int[] b;
        a = b;     // a points to the same array as b does
        assert(a.ptr == b.ptr);
        assert(a == []);
    }
}