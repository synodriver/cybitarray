from cpython.bytes cimport PyBytes_FromStringAndSize
from bitarray import bitarray

from cybitarray.bitarray cimport bitarray

cpdef inline bytes bitarray_as_bytes(bitarray obj):
    cdef Py_ssize_t size
    if obj.nbits % 8 == 0:
        size = obj.nbits / 8
    else:
        size = obj.nbits / 8 + 1
    return PyBytes_FromStringAndSize(obj.ob_item, size)
