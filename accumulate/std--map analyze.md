# std::map analyze
### std::map
	template < class Key,                                    // map::key_type
				 class T,                                      // map::mapped_type
				 class Compare = less<Key>,                    // map::key_compare
				 class Alloc = allocator<pair<const Key, T> >  // map::allocator_type
				 > class map;
### map
Maps are associative containers that score elements formed by a combination of a key value and a mapped value, following a specific order.
	In a map, the key values are generally used to sort and uniquely identify the elements, while the mapped values store the content associated to this key. Type type of key and mapped value may differ, and are grouped together in member type value\_type, which is a pair type combining both:
	typedef pair\<const Key, T\> value\_type;
	
Internally, the elements in a map are always sorted by its key following a specific strict weak ordering criterion indicated by its internal comparison object(of type Compare).
	
map containers are generally slower than unordered_map containers to access individual elements by their key, but they allow the direct iteration on subsets based on their order.
	
The mapped values in a map can be accessed directly by their corresponding key using the bracket operator(operator[]).
	Maps are typically implemented as binary search trees.
### Container properties
#### Associative
Elements in associative containers are referenced by their key and not by their absolute position in the container.
#### Ordered
The elements in the container follow a strict order at all times. All inserted elements are given a position in this order.
#### Map
Each element associates a key to a mapped value: Keys are meant to identify the elements whose main content is the mapped value.
#### Unique keys
No two elements in the container can have equivalent keys.
#### Allocator-aware
The container uses an allocator object to dynamically handle its storage needs.
### Template parameters
#### Key
Type of the keys. Each element in a map is uniquely identified by its key value. Aliased as member type map::key_type
#### T
Type of the mapped value. Each element in a map stores some data as its mapped value. Aliased as member type map::mapped_type.
#### Compare
A binary predicate that takes two element keys as arguments and returns a bool. The expression comp(a, b), where comp is an object of this type and a and b are key values, shall return true if a is considered to go before b in the strict weak ordering the function defines.
The map object uses this expression to determine both the order the elements follow in the container and whether two element keys are equivalent(by comparing them reflexively: they are equivalent if !comp(a, b) && !comp(b, a)). No two elements in a map container can have equivalent keys.
This can be a function pointer or a function object. This defaults to less<T>, which returns the same as applying the less-than operator (a < b). Aliased as member type map::key_compare.
#### Alloc
Type of the allocator object used to define the storage allocation model. By default, the allocator class template is used, which defines the simplest memory allocation model and is value-independent.
Aliased as member type map::allocator_type.
