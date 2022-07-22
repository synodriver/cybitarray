cdef extern from "bitarray.h":
    ctypedef class bitarray.bitarray [object bitarrayobject]:
        cdef:
            char *ob_item              # buffer */
            Py_ssize_t allocated       # allocated buffer size (in bytes) */
            Py_ssize_t nbits           # length of bitarray, i.e. elements */
            int endian                 # bit endianness of bitarray */
            int ob_exports             # how many buffer exports */
            object weakreflist      # list of weak references */
            Py_buffer *buffer          # used when importing a buffer */
            int readonly