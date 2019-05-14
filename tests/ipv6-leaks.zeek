# Needs perftools support.
#
# @TEST-GROUP: leaks
#
# @TEST-REQUIRES: zeek --help 2>&1 | grep -q mem-leaks
#
# @TEST-EXEC: cat $TRACES/ipv6.trace.gz | gunzip | HEAP_CHECK_DUMP_DIRECTORY=. HEAPCHECK=local zeek -m -r - %INPUT; true
# @TEST-EXEC: $SCRIPTS/perftools-adapt-paths .stderr

@load test-all-policy
@load testing-setup
