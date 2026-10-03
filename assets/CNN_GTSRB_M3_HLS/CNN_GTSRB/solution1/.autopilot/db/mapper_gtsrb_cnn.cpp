#include <algorithm>
#include <cassert>
#include <fstream>
#include <iostream>
#include <list>
#include <map>
#include <vector>
#include "ap_fixed.h"
#include "ap_int.h"
#include "hls_stream.h"
using namespace std;

namespace hls::sim
{
  template<size_t n>
  struct Byte {
    unsigned char a[n];

    Byte()
    {
      for (size_t i = 0; i < n; ++i) {
        a[i] = 0;
      }
    }

    template<typename T>
    Byte<n>& operator= (const T &val)
    {
      std::memcpy(a, &val, n);
      return *this;
    }
  };

  struct SimException : public std::exception {
    const char *msg;
    const size_t line;
    SimException(const char *msg, const size_t line)
      : msg(msg), line(line)
    {
    }
  };

  void errExit(const size_t line, const char *msg)
  {
    std::string s;
    s += "at line ";
    s += std::to_string(line);
    s += " occurred problem: ";
    s += msg;
    s += "\n";
    fputs(s.c_str(), stderr);
    exit(1);
  }
}


namespace hls::sim
{
  struct Buffer {
    char *first;
    Buffer(char *addr) : first(addr)
    {
    }
  };

  struct DBuffer : public Buffer {
    static const size_t total = 1<<10;
    size_t ufree;

    DBuffer(size_t usize) : Buffer(nullptr), ufree(total)
    {
      first = new char[usize*ufree];
    }

    ~DBuffer()
    {
      delete[] first;
    }
  };

  struct CStream {
    char *front;
    char *back;
    size_t num;
    size_t usize;
    std::list<Buffer*> bufs;
    bool dynamic;

    CStream() : front(nullptr), back(nullptr),
                num(0), usize(0), dynamic(true)
    {
    }

    ~CStream()
    {
      for (Buffer *p : bufs) {
        delete p;
      }
    }

    template<typename T>
    T* data()
    {
      return (T*)front;
    }

    template<typename T>
    void transfer(hls::stream<T> *param)
    {
      while (!empty()) {
        param->write(*(T*)nextRead());
      }
    }

    bool empty();
    char* nextRead();
    char* nextWrite();
  };

  bool CStream::empty()
  {
    return num == 0;
  }

  char* CStream::nextRead()
  {
    assert(num > 0);
    char *res = front;
    front += usize;
    if (dynamic) {
      if (++static_cast<DBuffer*>(bufs.front())->ufree == DBuffer::total) {
        if (bufs.size() > 1) {
          bufs.pop_front();
          front = bufs.front()->first;
        } else {
          front = back = bufs.front()->first;
        }
      }
    }
    --num;
    return res;
  }

  char* CStream::nextWrite()
  {
    if (dynamic) {
      if (static_cast<DBuffer*>(bufs.back())->ufree == 0) {
        bufs.push_back(new DBuffer(usize));
        back = bufs.back()->first;
      }
      --static_cast<DBuffer*>(bufs.back())->ufree;
    }
    char *res = back;
    back += usize;
    ++num;
    return res;
  }

  std::list<CStream> streams;
  std::map<char*, CStream*> prebuilt;

  CStream* createStream(size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = true;
      s.bufs.push_back(new DBuffer(usize));
      s.front = s.bufs.back()->first;
      s.back = s.front;
      s.num = 0;
      s.usize = usize;
    }
    return &s;
  }

  template<typename T>
  CStream* createStream(hls::stream<T> *param)
  {
    CStream *s = createStream(sizeof(T));
    {
      s->dynamic = true;
      while (!param->empty()) {
        T data = param->read();
        memcpy(s->nextWrite(), (char*)&data, sizeof(T));
      }
      prebuilt[s->front] = s;
    }
    return s;
  }

  template<typename T>
  CStream* createStream(T *param, size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = false;
      s.bufs.push_back(new Buffer((char*)param));
      s.front = s.back = s.bufs.back()->first;
      s.usize = usize;
      s.num = ~0UL;
    }
    prebuilt[s.front] = &s;
    return &s;
  }

  CStream* findStream(char *buf)
  {
    return prebuilt.at(buf);
  }
}
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
using hls::sim::Byte;
extern "C" void gtsrb_cnn(Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, int, int, int, int, int, int, int, int, int, int, int, int, int);
extern "C" void apatb_gtsrb_cnn_hw(volatile void * __xlx_apatb_param_w_c1, volatile void * __xlx_apatb_param_b_c1, volatile void * __xlx_apatb_param_w_c2, volatile void * __xlx_apatb_param_b_c2, volatile void * __xlx_apatb_param_w_c3, volatile void * __xlx_apatb_param_b_c3, volatile void * __xlx_apatb_param_w_fc1, volatile void * __xlx_apatb_param_b_fc1, volatile void * __xlx_apatb_param_w_fc2, volatile void * __xlx_apatb_param_b_fc2, volatile void * __xlx_apatb_param_feature_in, volatile void * __xlx_apatb_param_logits_out, volatile void * __xlx_apatb_param_top1) {
using hls::sim::createStream;
  // Collect __xlx_w_c1_b_c1__tmp_vec
std::vector<Byte<4>> __xlx_w_c1_b_c1__tmp_vec;
for (size_t i = 0; i < 432; ++i){
__xlx_w_c1_b_c1__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_w_c1)[i]);
}
  int __xlx_size_param_w_c1 = 432;
  int __xlx_offset_param_w_c1 = 0;
  int __xlx_offset_byte_param_w_c1 = 0*4;
for (size_t i = 0; i < 16; ++i){
__xlx_w_c1_b_c1__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_b_c1)[i]);
}
  int __xlx_size_param_b_c1 = 16;
  int __xlx_offset_param_b_c1 = 432;
  int __xlx_offset_byte_param_b_c1 = 432*4;
  // Collect __xlx_w_c2_b_c2__tmp_vec
std::vector<Byte<4>> __xlx_w_c2_b_c2__tmp_vec;
for (size_t i = 0; i < 4608; ++i){
__xlx_w_c2_b_c2__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_w_c2)[i]);
}
  int __xlx_size_param_w_c2 = 4608;
  int __xlx_offset_param_w_c2 = 0;
  int __xlx_offset_byte_param_w_c2 = 0*4;
for (size_t i = 0; i < 32; ++i){
__xlx_w_c2_b_c2__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_b_c2)[i]);
}
  int __xlx_size_param_b_c2 = 32;
  int __xlx_offset_param_b_c2 = 4608;
  int __xlx_offset_byte_param_b_c2 = 4608*4;
  // Collect __xlx_w_c3_b_c3__tmp_vec
std::vector<Byte<4>> __xlx_w_c3_b_c3__tmp_vec;
for (size_t i = 0; i < 18432; ++i){
__xlx_w_c3_b_c3__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_w_c3)[i]);
}
  int __xlx_size_param_w_c3 = 18432;
  int __xlx_offset_param_w_c3 = 0;
  int __xlx_offset_byte_param_w_c3 = 0*4;
for (size_t i = 0; i < 64; ++i){
__xlx_w_c3_b_c3__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_b_c3)[i]);
}
  int __xlx_size_param_b_c3 = 64;
  int __xlx_offset_param_b_c3 = 18432;
  int __xlx_offset_byte_param_b_c3 = 18432*4;
  // Collect __xlx_w_fc1_b_fc1__tmp_vec
std::vector<Byte<4>> __xlx_w_fc1_b_fc1__tmp_vec;
for (size_t i = 0; i < 16384; ++i){
__xlx_w_fc1_b_fc1__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_w_fc1)[i]);
}
  int __xlx_size_param_w_fc1 = 16384;
  int __xlx_offset_param_w_fc1 = 0;
  int __xlx_offset_byte_param_w_fc1 = 0*4;
for (size_t i = 0; i < 64; ++i){
__xlx_w_fc1_b_fc1__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_b_fc1)[i]);
}
  int __xlx_size_param_b_fc1 = 64;
  int __xlx_offset_param_b_fc1 = 16384;
  int __xlx_offset_byte_param_b_fc1 = 16384*4;
  // Collect __xlx_w_fc2_b_fc2__tmp_vec
std::vector<Byte<4>> __xlx_w_fc2_b_fc2__tmp_vec;
for (size_t i = 0; i < 2752; ++i){
__xlx_w_fc2_b_fc2__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_w_fc2)[i]);
}
  int __xlx_size_param_w_fc2 = 2752;
  int __xlx_offset_param_w_fc2 = 0;
  int __xlx_offset_byte_param_w_fc2 = 0*4;
for (size_t i = 0; i < 43; ++i){
__xlx_w_fc2_b_fc2__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_b_fc2)[i]);
}
  int __xlx_size_param_b_fc2 = 43;
  int __xlx_offset_param_b_fc2 = 2752;
  int __xlx_offset_byte_param_b_fc2 = 2752*4;
  // Collect __xlx_feature_in_logits_out_top1__tmp_vec
std::vector<Byte<4>> __xlx_feature_in_logits_out_top1__tmp_vec;
for (size_t i = 0; i < 2700; ++i){
__xlx_feature_in_logits_out_top1__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_feature_in)[i]);
}
  int __xlx_size_param_feature_in = 2700;
  int __xlx_offset_param_feature_in = 0;
  int __xlx_offset_byte_param_feature_in = 0*4;
for (size_t i = 0; i < 43; ++i){
__xlx_feature_in_logits_out_top1__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_logits_out)[i]);
}
  int __xlx_size_param_logits_out = 43;
  int __xlx_offset_param_logits_out = 2700;
  int __xlx_offset_byte_param_logits_out = 2700*4;
for (size_t i = 0; i < 1; ++i){
__xlx_feature_in_logits_out_top1__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_top1)[i]);
}
  int __xlx_size_param_top1 = 1;
  int __xlx_offset_param_top1 = 2743;
  int __xlx_offset_byte_param_top1 = 2743*4;
  // DUT call
  gtsrb_cnn(__xlx_w_c1_b_c1__tmp_vec.data(), __xlx_w_c2_b_c2__tmp_vec.data(), __xlx_w_c3_b_c3__tmp_vec.data(), __xlx_w_fc1_b_fc1__tmp_vec.data(), __xlx_w_fc2_b_fc2__tmp_vec.data(), __xlx_feature_in_logits_out_top1__tmp_vec.data(), __xlx_offset_byte_param_w_c1, __xlx_offset_byte_param_b_c1, __xlx_offset_byte_param_w_c2, __xlx_offset_byte_param_b_c2, __xlx_offset_byte_param_w_c3, __xlx_offset_byte_param_b_c3, __xlx_offset_byte_param_w_fc1, __xlx_offset_byte_param_b_fc1, __xlx_offset_byte_param_w_fc2, __xlx_offset_byte_param_b_fc2, __xlx_offset_byte_param_feature_in, __xlx_offset_byte_param_logits_out, __xlx_offset_byte_param_top1);
// print __xlx_apatb_param_w_c1
for (size_t i = 0; i < __xlx_size_param_w_c1; ++i) {
((Byte<4>*)__xlx_apatb_param_w_c1)[i] = __xlx_w_c1_b_c1__tmp_vec[__xlx_offset_param_w_c1+i];
}
// print __xlx_apatb_param_b_c1
for (size_t i = 0; i < __xlx_size_param_b_c1; ++i) {
((Byte<4>*)__xlx_apatb_param_b_c1)[i] = __xlx_w_c1_b_c1__tmp_vec[__xlx_offset_param_b_c1+i];
}
// print __xlx_apatb_param_w_c2
for (size_t i = 0; i < __xlx_size_param_w_c2; ++i) {
((Byte<4>*)__xlx_apatb_param_w_c2)[i] = __xlx_w_c2_b_c2__tmp_vec[__xlx_offset_param_w_c2+i];
}
// print __xlx_apatb_param_b_c2
for (size_t i = 0; i < __xlx_size_param_b_c2; ++i) {
((Byte<4>*)__xlx_apatb_param_b_c2)[i] = __xlx_w_c2_b_c2__tmp_vec[__xlx_offset_param_b_c2+i];
}
// print __xlx_apatb_param_w_c3
for (size_t i = 0; i < __xlx_size_param_w_c3; ++i) {
((Byte<4>*)__xlx_apatb_param_w_c3)[i] = __xlx_w_c3_b_c3__tmp_vec[__xlx_offset_param_w_c3+i];
}
// print __xlx_apatb_param_b_c3
for (size_t i = 0; i < __xlx_size_param_b_c3; ++i) {
((Byte<4>*)__xlx_apatb_param_b_c3)[i] = __xlx_w_c3_b_c3__tmp_vec[__xlx_offset_param_b_c3+i];
}
// print __xlx_apatb_param_w_fc1
for (size_t i = 0; i < __xlx_size_param_w_fc1; ++i) {
((Byte<4>*)__xlx_apatb_param_w_fc1)[i] = __xlx_w_fc1_b_fc1__tmp_vec[__xlx_offset_param_w_fc1+i];
}
// print __xlx_apatb_param_b_fc1
for (size_t i = 0; i < __xlx_size_param_b_fc1; ++i) {
((Byte<4>*)__xlx_apatb_param_b_fc1)[i] = __xlx_w_fc1_b_fc1__tmp_vec[__xlx_offset_param_b_fc1+i];
}
// print __xlx_apatb_param_w_fc2
for (size_t i = 0; i < __xlx_size_param_w_fc2; ++i) {
((Byte<4>*)__xlx_apatb_param_w_fc2)[i] = __xlx_w_fc2_b_fc2__tmp_vec[__xlx_offset_param_w_fc2+i];
}
// print __xlx_apatb_param_b_fc2
for (size_t i = 0; i < __xlx_size_param_b_fc2; ++i) {
((Byte<4>*)__xlx_apatb_param_b_fc2)[i] = __xlx_w_fc2_b_fc2__tmp_vec[__xlx_offset_param_b_fc2+i];
}
// print __xlx_apatb_param_feature_in
for (size_t i = 0; i < __xlx_size_param_feature_in; ++i) {
((Byte<4>*)__xlx_apatb_param_feature_in)[i] = __xlx_feature_in_logits_out_top1__tmp_vec[__xlx_offset_param_feature_in+i];
}
// print __xlx_apatb_param_logits_out
for (size_t i = 0; i < __xlx_size_param_logits_out; ++i) {
((Byte<4>*)__xlx_apatb_param_logits_out)[i] = __xlx_feature_in_logits_out_top1__tmp_vec[__xlx_offset_param_logits_out+i];
}
// print __xlx_apatb_param_top1
for (size_t i = 0; i < __xlx_size_param_top1; ++i) {
((Byte<4>*)__xlx_apatb_param_top1)[i] = __xlx_feature_in_logits_out_top1__tmp_vec[__xlx_offset_param_top1+i];
}
}
