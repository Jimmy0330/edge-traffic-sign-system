#include <iostream>
#include <fstream>
#include "gtsrb_cnn.h"

using namespace std;

template <typename T>
void load_dat(const string& fname, T* arr, int size) {
    ifstream fin(fname);
    if (!fin) {
        cerr << "Error: cannot open " << fname << endl;
        exit(1);
    }
    for (int i = 0; i < size; i++) {
        fin >> arr[i];
    }
    fin.close();
}

int main() {
    static Dtype_w w_c1[C1_KH * C1_KW * C1_IN * C1_OUT];
    static Dtype_w b_c1[C1_OUT];
    static Dtype_w w_c2[C2_KH * C2_KW * C2_IN * C2_OUT];
    static Dtype_w b_c2[C2_OUT];
    static Dtype_w w_c3[C3_KH * C3_KW * C3_IN * C3_OUT];
    static Dtype_w b_c3[C3_OUT];
    static Dtype_w w_fc1[FC1_IN * FC1_OUT];
    static Dtype_w b_fc1[FC1_OUT];
    static Dtype_w w_fc2[FC2_IN * FC2_OUT];
    static Dtype_w b_fc2[FC2_OUT];

    static Dtype_f feature_in[IN_H * IN_W * IN_C];
    static Dtype_f logits_out[FC2_OUT];
    static int top1[1];

    cout << "Loading weights..." << endl;
    load_dat("weight_0.dat", w_c1, C1_KH * C1_KW * C1_IN * C1_OUT);
    load_dat("weight_1.dat", b_c1, C1_OUT);
    load_dat("weight_2.dat", w_c2, C2_KH * C2_KW * C2_IN * C2_OUT);
    load_dat("weight_3.dat", b_c2, C2_OUT);
    load_dat("weight_4.dat", w_c3, C3_KH * C3_KW * C3_IN * C3_OUT);
    load_dat("weight_5.dat", b_c3, C3_OUT);
    load_dat("weight_6.dat", w_fc1, FC1_IN * FC1_OUT);
    load_dat("weight_7.dat", b_fc1, FC1_OUT);
    load_dat("weight_8.dat", w_fc2, FC2_IN * FC2_OUT);
    load_dat("weight_9.dat", b_fc2, FC2_OUT);

    cout << "Loading input image..." << endl;
    load_dat("input_image.dat", feature_in, IN_H * IN_W * IN_C);

    cout << "Running gtsrb_model3_cnn..." << endl;
    gtsrb_cnn(
        w_c1, b_c1, w_c2, b_c2, w_c3, b_c3,
        w_fc1, b_fc1, w_fc2, b_fc2,
        feature_in, logits_out, top1
    );

    cout << "Top-1 class index = " << top1[0] << endl;
    cout << "Logits (43 classes):" << endl;
    for (int i = 0; i < 43; i++) {
        cout << logits_out[i] << " ";
    }
    cout << endl << "Simulation done" << endl;

    return 0;
}
