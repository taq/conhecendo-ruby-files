struct RString {

  struct RBasic basic;

  union {
    struct {
      long len;
      char *ptr;
      union {
        long capa;
        VALUE shared;
      } aux;
    } heap;

    char ary[RSTRING_EMBED_LEN_MAX + 1];
  } as;
};
