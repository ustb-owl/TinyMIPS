#ifndef TINYLANG_UTIL_GUARD_H_
#define TINYLANG_UTIL_GUARD_H_

#include <functional>
#include <utility>

class Guard {
 public:
  explicit Guard(std::function<void()> release) : release_(release) {}
  // move constructor
  Guard(Guard &&guard) noexcept : release_(std::move(guard.release_)) {}
  // remove copy constructor
  Guard(const Guard &) = delete;
  // destructor
  ~Guard() { release_(); }

  // remove move operator
  Guard &operator=(Guard &&) noexcept = delete;
  // remove copy operator
  Guard &operator=(const Guard &) = delete;

  // release manually
  void Release() {
    release_();
    release_ = nullptr;
  }

 private:
  std::function<void()> release_;
};

#endif  // TINYLANG_UTIL_GUARD_H_
