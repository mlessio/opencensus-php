PHP_ARG_ENABLE(opencensus, whether to enable my extension,
[ --enable-opencensus  Enable OpenCensus])

if test "$PHP_OPENCENSUS" = "yes"; then
  AC_DEFINE(HAVE_OPENCENSUS, 1, [Whether you have OpenCensus])
  PHP_NEW_EXTENSION(opencensus, opencensus_trace.c opencensus_trace_span.c opencensus_trace_context.c, $ext_shared)
fi