#ifndef TINYLANG_UTIL_NESTED_H_
#define TINYLANG_UTIL_NESTED_H_

#include <unordered_map>
#include <memory>
#include <type_traits>

namespace tinylang::util {

template <typename K, typename V>
class NestedMap;

template <typename K, typename V>
using NestedMapPtr = std::shared_ptr<NestedMap<K, V>>;

template <typename K, typename V>
class NestedMap {
 public:
  NestedMap() : outer_(nullptr) { static_cast<void>(PtrChecker<V>{}); }
  NestedMap(const NestedMapPtr<K, V> &outer) : outer_(outer) {
    static_cast<void>(PtrChecker<V>{});
  }

  // add item to current map
  void AddItem(const K &key, const V &value) {
    map_.insert({key, value});
  }
  // get item
  V GetItem(const K &key, bool recursive) {
    auto it = map_.find(key);
    if (it != map_.end()) {
      return it->second;
    }
    else if (outer_ && recursive) {
      return outer_->GetItem(key);
    }
    else {
      return nullptr;
    }
  }
  // get item recursively
  V GetItem(const K &key) { return GetItem(key, true); }

  // outer map
  const NestedMapPtr<K, V> &outer() const { return outer_; }
  // check if current map is root map
  bool is_root() const { return outer_ == nullptr; }

 private:
  // check if type is suitable
  template <typename Ptr>
  struct PtrChecker {
    static_assert(std::is_pointer<Ptr>::value ||
                      std::is_assignable<Ptr, std::nullptr_t>::value,
                  "type must be a pointer or can accept nullptr_t");
  };

  NestedMapPtr<K, V> outer_;
  std::unordered_map<K, V> map_;
};

// create a new nested map
template <typename K, typename V>
inline NestedMapPtr<K, V> MakeNestedMap() {
  return std::make_shared<NestedMap<K, V>>();
}

// create a new nested map (with outer map)
template <typename K, typename V>
inline NestedMapPtr<K, V> MakeNestedMap(const NestedMapPtr<K, V> &outer) {
  return std::make_shared<NestedMap<K, V>>(outer);
}

}  // namespace tinylang::util

#endif  // TINYLANG_UTIL_NESTED_H_
