#pragma once

#ifndef DUCKDB_C_API
#define DUCKDB_C_API
#include once "crt/stdint.bi"
#include once "crt/stddef.bi"

#inclib "duckdb"

extern "C"

type bool as ubyte

type duckdb_type as long

enum
   DUCKDB_TYPE_INVALID = 0
   DUCKDB_TYPE_BOOLEAN = 1
   DUCKDB_TYPE_TINYINT = 2
   DUCKDB_TYPE_SMALLINT = 3
   DUCKDB_TYPE_INTEGER = 4
   DUCKDB_TYPE_BIGINT = 5
   DUCKDB_TYPE_UTINYINT = 6
   DUCKDB_TYPE_USMALLINT = 7
   DUCKDB_TYPE_UINTEGER = 8
   DUCKDB_TYPE_UBIGINT = 9
   DUCKDB_TYPE_FLOAT = 10
   DUCKDB_TYPE_DOUBLE = 11
   DUCKDB_TYPE_TIMESTAMP = 12
   DUCKDB_TYPE_DATE = 13
   DUCKDB_TYPE_TIME = 14
   DUCKDB_TYPE_INTERVAL = 15
   DUCKDB_TYPE_HUGEINT = 16
   DUCKDB_TYPE_UHUGEINT = 32
   DUCKDB_TYPE_VARCHAR = 17
   DUCKDB_TYPE_BLOB = 18
   DUCKDB_TYPE_DECIMAL = 19
   DUCKDB_TYPE_TIMESTAMP_S = 20
   DUCKDB_TYPE_TIMESTAMP_MS = 21
   DUCKDB_TYPE_TIMESTAMP_NS = 22
   DUCKDB_TYPE_ENUM = 23
   DUCKDB_TYPE_LIST = 24
   DUCKDB_TYPE_STRUCT = 25
   DUCKDB_TYPE_MAP = 26
   DUCKDB_TYPE_ARRAY = 33
   DUCKDB_TYPE_UUID = 27
   DUCKDB_TYPE_UNION = 28
   DUCKDB_TYPE_BIT = 29
   DUCKDB_TYPE_TIME_TZ = 30
   DUCKDB_TYPE_TIMESTAMP_TZ = 31
   DUCKDB_TYPE_ANY = 34
   DUCKDB_TYPE_BIGNUM = 35
   DUCKDB_TYPE_SQLNULL = 36
   DUCKDB_TYPE_STRING_LITERAL = 37
   DUCKDB_TYPE_INTEGER_LITERAL = 38
   DUCKDB_TYPE_TIME_NS = 39
end enum

type duckdb_state as long
enum
   DuckDBSuccess = 0
   DuckDBError = 1
end enum

type duckdb_pending_state as long
enum
   DUCKDB_PENDING_RESULT_READY = 0
   DUCKDB_PENDING_RESULT_NOT_READY = 1
   DUCKDB_PENDING_ERROR_C = 2
   DUCKDB_PENDING_NO_TASKS_AVAILABLE = 3
end enum

type duckdb_result_type as long
enum
   DUCKDB_RESULT_TYPE_INVALID = 0
   DUCKDB_RESULT_TYPE_CHANGED_ROWS = 1
   DUCKDB_RESULT_TYPE_NOTHING = 2
   DUCKDB_RESULT_TYPE_QUERY_RESULT = 3
end enum

type duckdb_statement_type as long
enum
   DUCKDB_STATEMENT_TYPE_INVALID = 0
   DUCKDB_STATEMENT_TYPE_SELECT = 1
   DUCKDB_STATEMENT_TYPE_INSERT = 2
   DUCKDB_STATEMENT_TYPE_UPDATE = 3
   DUCKDB_STATEMENT_TYPE_EXPLAIN = 4
   DUCKDB_STATEMENT_TYPE_DELETE = 5
   DUCKDB_STATEMENT_TYPE_PREPARE = 6
   DUCKDB_STATEMENT_TYPE_CREATE = 7
   DUCKDB_STATEMENT_TYPE_EXECUTE = 8
   DUCKDB_STATEMENT_TYPE_ALTER = 9
   DUCKDB_STATEMENT_TYPE_TRANSACTION = 10
   DUCKDB_STATEMENT_TYPE_COPY = 11
   DUCKDB_STATEMENT_TYPE_ANALYZE = 12
   DUCKDB_STATEMENT_TYPE_VARIABLE_SET = 13
   DUCKDB_STATEMENT_TYPE_CREATE_FUNC = 14
   DUCKDB_STATEMENT_TYPE_DROP = 15
   DUCKDB_STATEMENT_TYPE_EXPORT = 16
   DUCKDB_STATEMENT_TYPE_PRAGMA = 17
   DUCKDB_STATEMENT_TYPE_VACUUM = 18
   DUCKDB_STATEMENT_TYPE_CALL = 19
   DUCKDB_STATEMENT_TYPE_SET = 20
   DUCKDB_STATEMENT_TYPE_LOAD = 21
   DUCKDB_STATEMENT_TYPE_RELATION = 22
   DUCKDB_STATEMENT_TYPE_EXTENSION = 23
   DUCKDB_STATEMENT_TYPE_LOGICAL_PLAN = 24
   DUCKDB_STATEMENT_TYPE_ATTACH = 25
   DUCKDB_STATEMENT_TYPE_DETACH = 26
   DUCKDB_STATEMENT_TYPE_MULTI = 27
end enum

type duckdb_error_type as long
enum
   DUCKDB_ERROR_INVALID = 0
   DUCKDB_ERROR_OUT_OF_RANGE = 1
   DUCKDB_ERROR_CONVERSION = 2
   DUCKDB_ERROR_UNKNOWN_TYPE = 3
   DUCKDB_ERROR_DECIMAL = 4
   DUCKDB_ERROR_MISMATCH_TYPE = 5
   DUCKDB_ERROR_DIVIDE_BY_ZERO = 6
   DUCKDB_ERROR_OBJECT_SIZE = 7
   DUCKDB_ERROR_INVALID_TYPE = 8
   DUCKDB_ERROR_SERIALIZATION = 9
   DUCKDB_ERROR_TRANSACTION = 10
   DUCKDB_ERROR_NOT_IMPLEMENTED = 11
   DUCKDB_ERROR_EXPRESSION = 12
   DUCKDB_ERROR_CATALOG = 13
   DUCKDB_ERROR_PARSER = 14
   DUCKDB_ERROR_PLANNER = 15
   DUCKDB_ERROR_SCHEDULER = 16
   DUCKDB_ERROR_EXECUTOR = 17
   DUCKDB_ERROR_CONSTRAINT = 18
   DUCKDB_ERROR_INDEX = 19
   DUCKDB_ERROR_STAT = 20
   DUCKDB_ERROR_CONNECTION = 21
   DUCKDB_ERROR_SYNTAX = 22
   DUCKDB_ERROR_SETTINGS = 23
   DUCKDB_ERROR_BINDER = 24
   DUCKDB_ERROR_NETWORK = 25
   DUCKDB_ERROR_OPTIMIZER = 26
   DUCKDB_ERROR_NULL_POINTER = 27
   DUCKDB_ERROR_IO = 28
   DUCKDB_ERROR_INTERRUPT = 29
   DUCKDB_ERROR_FATAL = 30
   DUCKDB_ERROR_INTERNAL = 31
   DUCKDB_ERROR_INVALID_INPUT = 32
   DUCKDB_ERROR_OUT_OF_MEMORY = 33
   DUCKDB_ERROR_PERMISSION = 34
   DUCKDB_ERROR_PARAMETER_NOT_RESOLVED = 35
   DUCKDB_ERROR_PARAMETER_NOT_ALLOWED = 36
   DUCKDB_ERROR_DEPENDENCY = 37
   DUCKDB_ERROR_HTTP = 38
   DUCKDB_ERROR_MISSING_EXTENSION = 39
   DUCKDB_ERROR_AUTOLOAD = 40
   DUCKDB_ERROR_SEQUENCE = 41
   DUCKDB_INVALID_CONFIGURATION = 42
end enum

type duckdb_cast_mode as long
enum
   DUCKDB_CAST_NORMAL = 0
   DUCKDB_CAST_TRY = 1
end enum

type idx_t as ulongint
type sel_t as ulong
type duckdb_delete_callback_t as sub(byval data as any ptr)
type duckdb_copy_callback_t as function(byval data as any ptr) as any ptr
type duckdb_task_state as any ptr

type duckdb_date
   days as long
end type

type duckdb_date_struct
   year as long
   month as byte
   day as byte
end type

type duckdb_time
   micros as longint
end type

type duckdb_time_struct
   hour as byte
   min as byte
   sec as byte
   micros as long
end type

type duckdb_time_ns
   nanos as longint
end type

type duckdb_time_tz
   bits as ulongint
end type

type duckdb_time_tz_struct
   time as duckdb_time_struct
   offset as long
end type

type duckdb_timestamp
   micros as longint
end type

type duckdb_timestamp_struct
   date as duckdb_date_struct
   time as duckdb_time_struct
end type

type duckdb_timestamp_s
   seconds as longint
end type

type duckdb_timestamp_ms
   millis as longint
end type

type duckdb_timestamp_ns
   nanos as longint
end type

type duckdb_interval
   months as long
   days as long
   micros as longint
end type

type duckdb_hugeint
   lower as ulongint
   upper as longint
end type

type duckdb_uhugeint
   lower as ulongint
   upper as ulongint
end type

type duckdb_decimal
   width as ubyte
   scale as ubyte
   value as duckdb_hugeint
end type

type duckdb_query_progress_type
   percentage as double
   rows_processed as ulongint
   total_rows_to_process as ulongint
end type

type duckdb_string_t_value_pointer
   length as ulong
   prefix as zstring * 4
   ptr as zstring ptr
end type

type duckdb_string_t_value_inlined
   length as ulong
   inlined as zstring * 12
end type

union duckdb_string_t_value
   pointer as duckdb_string_t_value_pointer
   inlined as duckdb_string_t_value_inlined
end union

type duckdb_string_t
   value as duckdb_string_t_value
end type

type duckdb_list_entry
   offset as ulongint
   length as ulongint
end type

type duckdb_column
   deprecated_data as any ptr
   deprecated_nullmask as bool ptr
   deprecated_type as duckdb_type
   deprecated_name as zstring ptr
   internal_data as any ptr
end type

type _duckdb_vector
   internal_ptr as any ptr
end type

type duckdb_vector as _duckdb_vector ptr

type _duckdb_selection_vector
   internal_ptr as any ptr
end type

type duckdb_selection_vector as _duckdb_selection_vector ptr

type duckdb_string
   data as zstring ptr
   size as idx_t
end type

type duckdb_blob
   data as any ptr
   size as idx_t
end type

type duckdb_bit
   data as ubyte ptr
   size as idx_t
end type

type duckdb_bignum
   data as ubyte ptr
   size as idx_t
   is_negative as bool
end type

type duckdb_result
   deprecated_column_count as idx_t
   deprecated_row_count as idx_t
   deprecated_rows_changed as idx_t
   deprecated_columns as duckdb_column ptr
   deprecated_error_message as zstring ptr
   internal_data as any ptr
end type

type _duckdb_instance_cache
   internal_ptr as any ptr
end type

type duckdb_instance_cache as _duckdb_instance_cache ptr

type _duckdb_database
   internal_ptr as any ptr
end type

type duckdb_database as _duckdb_database ptr

type _duckdb_connection
   internal_ptr as any ptr
end type

type duckdb_connection as _duckdb_connection ptr

type _duckdb_client_context
   internal_ptr as any ptr
end type

type duckdb_client_context as _duckdb_client_context ptr

type _duckdb_prepared_statement
   internal_ptr as any ptr
end type

type duckdb_prepared_statement as _duckdb_prepared_statement ptr

type _duckdb_extracted_statements
   internal_ptr as any ptr
end type

type duckdb_extracted_statements as _duckdb_extracted_statements ptr

type _duckdb_pending_result
   internal_ptr as any ptr
end type

type duckdb_pending_result as _duckdb_pending_result ptr

type _duckdb_appender
   internal_ptr as any ptr
end type

type duckdb_appender as _duckdb_appender ptr

type _duckdb_table_description
   internal_ptr as any ptr
end type

type duckdb_table_description as _duckdb_table_description ptr

type _duckdb_config
   internal_ptr as any ptr
end type

type duckdb_config as _duckdb_config ptr

type _duckdb_logical_type
   internal_ptr as any ptr
end type

type duckdb_logical_type as _duckdb_logical_type ptr

type _duckdb_create_type_info
   internal_ptr as any ptr
end type

type duckdb_create_type_info as _duckdb_create_type_info ptr

type _duckdb_data_chunk
   internal_ptr as any ptr
end type

type duckdb_data_chunk as _duckdb_data_chunk ptr

type _duckdb_value
   internal_ptr as any ptr
end type

type duckdb_value as _duckdb_value ptr

type _duckdb_profiling_info
   internal_ptr as any ptr
end type

type duckdb_profiling_info as _duckdb_profiling_info ptr

type _duckdb_error_data
   internal_ptr as any ptr
end type

type duckdb_error_data as _duckdb_error_data ptr

type _duckdb_expression
   internal_ptr as any ptr
end type

type duckdb_expression as _duckdb_expression ptr

type _duckdb_extension_info
   internal_ptr as any ptr
end type

type duckdb_extension_info as _duckdb_extension_info ptr

type _duckdb_function_info
   internal_ptr as any ptr
end type

type duckdb_function_info as _duckdb_function_info ptr

type _duckdb_bind_info
   internal_ptr as any ptr
end type

type duckdb_bind_info as _duckdb_bind_info ptr

type _duckdb_scalar_function
   internal_ptr as any ptr
end type

type duckdb_scalar_function as _duckdb_scalar_function ptr

type _duckdb_scalar_function_set
   internal_ptr as any ptr
end type

type duckdb_scalar_function_set as _duckdb_scalar_function_set ptr
type duckdb_scalar_function_bind_t as sub(byval info as duckdb_bind_info)
type duckdb_scalar_function_t as sub(byval info as duckdb_function_info, byval input as duckdb_data_chunk, byval output as duckdb_vector)

type _duckdb_aggregate_function
   internal_ptr as any ptr
end type

type duckdb_aggregate_function as _duckdb_aggregate_function ptr

type _duckdb_aggregate_function_set
   internal_ptr as any ptr
end type

type duckdb_aggregate_function_set as _duckdb_aggregate_function_set ptr

type _duckdb_aggregate_state
   internal_ptr as any ptr
end type

type duckdb_aggregate_state as _duckdb_aggregate_state ptr
type duckdb_aggregate_state_size as function(byval info as duckdb_function_info) as idx_t
type duckdb_aggregate_init_t as sub(byval info as duckdb_function_info, byval state as duckdb_aggregate_state)
type duckdb_aggregate_destroy_t as sub(byval states as duckdb_aggregate_state ptr, byval count as idx_t)
type duckdb_aggregate_update_t as sub(byval info as duckdb_function_info, byval input as duckdb_data_chunk, byval states as duckdb_aggregate_state ptr)
type duckdb_aggregate_combine_t as sub(byval info as duckdb_function_info, byval source as duckdb_aggregate_state ptr, byval target as duckdb_aggregate_state ptr, byval count as idx_t)
type duckdb_aggregate_finalize_t as sub(byval info as duckdb_function_info, byval source as duckdb_aggregate_state ptr, byval result as duckdb_vector, byval count as idx_t, byval offset as idx_t)

type _duckdb_table_function
   internal_ptr as any ptr
end type

type duckdb_table_function as _duckdb_table_function ptr

type _duckdb_init_info
   internal_ptr as any ptr
end type

type duckdb_init_info as _duckdb_init_info ptr
type duckdb_table_function_bind_t as sub(byval info as duckdb_bind_info)
type duckdb_table_function_init_t as sub(byval info as duckdb_init_info)
type duckdb_table_function_t as sub(byval info as duckdb_function_info, byval output as duckdb_data_chunk)

type _duckdb_cast_function
   internal_ptr as any ptr
end type

type duckdb_cast_function as _duckdb_cast_function ptr
type duckdb_cast_function_t as function(byval info as duckdb_function_info, byval count as idx_t, byval input as duckdb_vector, byval output as duckdb_vector) as bool

type _duckdb_replacement_scan_info
   internal_ptr as any ptr
end type

type duckdb_replacement_scan_info as _duckdb_replacement_scan_info ptr
type duckdb_replacement_callback_t as sub(byval info as duckdb_replacement_scan_info, byval table_name as const zstring ptr, byval data as any ptr)

Type ArrowArray As Any Ptr
Type ArrowSchema As Any Ptr

type _duckdb_arrow
   internal_ptr as any ptr
end type

Type duckdb_arrow As _duckdb_arrow Ptr

type _duckdb_arrow_stream
   internal_ptr as any ptr
end type

type duckdb_arrow_stream as _duckdb_arrow_stream ptr

type _duckdb_arrow_schema
   internal_ptr as any ptr
end type

type duckdb_arrow_schema as _duckdb_arrow_schema ptr

type _duckdb_arrow_converted_schema
   internal_ptr as any ptr
end type

type duckdb_arrow_converted_schema as _duckdb_arrow_converted_schema ptr

type _duckdb_arrow_array
   internal_ptr as any ptr
end type

type duckdb_arrow_array as _duckdb_arrow_array ptr

type _duckdb_arrow_options
   internal_ptr as any ptr
end type

type duckdb_arrow_options as _duckdb_arrow_options ptr

type duckdb_extension_access
   set_error as sub(byval info as duckdb_extension_info, byval error as const zstring ptr)
   get_database as function(byval info as duckdb_extension_info) as duckdb_database ptr
   get_api as function(byval info as duckdb_extension_info, byval version as const zstring ptr) as const any ptr
end type

declare function duckdb_create_instance_cache() as duckdb_instance_cache
declare function duckdb_get_or_create_from_cache(byval instance_cache as duckdb_instance_cache, byval path as const zstring ptr, byval out_database as duckdb_database ptr, byval config as duckdb_config, byval out_error as zstring ptr ptr) as duckdb_state
declare sub duckdb_destroy_instance_cache(byval instance_cache as duckdb_instance_cache ptr)
declare function duckdb_open(byval path as const zstring ptr, byval out_database as duckdb_database ptr) as duckdb_state
declare function duckdb_open_ext(byval path as const zstring ptr, byval out_database as duckdb_database ptr, byval config as duckdb_config, byval out_error as zstring ptr ptr) as duckdb_state
declare sub duckdb_close(byval database as duckdb_database ptr)
declare function duckdb_connect(byval database as duckdb_database, byval out_connection as duckdb_connection ptr) as duckdb_state
declare sub duckdb_interrupt(byval connection as duckdb_connection)
declare function duckdb_query_progress(byval connection as duckdb_connection) as duckdb_query_progress_type
declare sub duckdb_disconnect(byval connection as duckdb_connection ptr)
declare sub duckdb_connection_get_client_context(byval connection as duckdb_connection, byval out_context as duckdb_client_context ptr)
declare sub duckdb_connection_get_arrow_options(byval connection as duckdb_connection, byval out_arrow_options as duckdb_arrow_options ptr)
declare function duckdb_client_context_get_connection_id(byval context as duckdb_client_context) as idx_t
declare sub duckdb_destroy_client_context(byval context as duckdb_client_context ptr)
declare sub duckdb_destroy_arrow_options(byval arrow_options as duckdb_arrow_options ptr)
declare function duckdb_library_version() as const zstring ptr
declare function duckdb_get_table_names(byval connection as duckdb_connection, byval query as const zstring ptr, byval qualified as bool) as duckdb_value
declare function duckdb_create_config(byval out_config as duckdb_config ptr) as duckdb_state
declare function duckdb_config_count() as uinteger
declare function duckdb_get_config_flag(byval index as uinteger, byval out_name as const zstring ptr ptr, byval out_description as const zstring ptr ptr) as duckdb_state
declare function duckdb_set_config(byval config as duckdb_config, byval name as const zstring ptr, byval option as const zstring ptr) as duckdb_state
declare sub duckdb_destroy_config(byval config as duckdb_config ptr)
declare function duckdb_create_error_data(byval type as duckdb_error_type, byval message as const zstring ptr) as duckdb_error_data
declare sub duckdb_destroy_error_data(byval error_data as duckdb_error_data ptr)
declare function duckdb_error_data_error_type(byval error_data as duckdb_error_data) as duckdb_error_type
declare function duckdb_error_data_message(byval error_data as duckdb_error_data) as const zstring ptr
declare function duckdb_error_data_has_error(byval error_data as duckdb_error_data) as bool
declare function duckdb_query(byval connection as duckdb_connection, byval query as const zstring ptr, byval out_result as duckdb_result ptr) as duckdb_state
declare sub duckdb_destroy_result(byval result as duckdb_result ptr)
declare function duckdb_column_name(byval result as duckdb_result ptr, byval col as idx_t) as const zstring ptr
declare function duckdb_column_type(byval result as duckdb_result ptr, byval col as idx_t) as duckdb_type
declare function duckdb_result_statement_type(byval result as duckdb_result) as duckdb_statement_type
declare function duckdb_column_logical_type(byval result as duckdb_result ptr, byval col as idx_t) as duckdb_logical_type
declare function duckdb_result_get_arrow_options(byval result as duckdb_result ptr) as duckdb_arrow_options
declare function duckdb_column_count(byval result as duckdb_result ptr) as idx_t
declare function duckdb_row_count(byval result as duckdb_result ptr) as idx_t
declare function duckdb_rows_changed(byval result as duckdb_result ptr) as idx_t
declare function duckdb_column_data(byval result as duckdb_result ptr, byval col as idx_t) as any ptr
declare function duckdb_nullmask_data(byval result as duckdb_result ptr, byval col as idx_t) as bool ptr
declare function duckdb_result_error(byval result as duckdb_result ptr) as const zstring ptr
declare function duckdb_result_error_type(byval result as duckdb_result ptr) as duckdb_error_type
declare function duckdb_result_get_chunk(byval result as duckdb_result, byval chunk_index as idx_t) as duckdb_data_chunk
declare function duckdb_result_is_streaming(byval result as duckdb_result) as bool
declare function duckdb_result_chunk_count(byval result as duckdb_result) as idx_t
declare function duckdb_result_return_type(byval result as duckdb_result) as duckdb_result_type
declare function duckdb_value_boolean(byval result as duckdb_result ptr, byval col as idx_t, byval row as idx_t) as bool
declare function duckdb_value_int8(byval result as duckdb_result ptr, byval col as idx_t, byval row as idx_t) as byte
declare function duckdb_value_int16(byval result as duckdb_result ptr, byval col as idx_t, byval row as idx_t) as short
declare function duckdb_value_int32(byval result as duckdb_result ptr, byval col as idx_t, byval row as idx_t) as long
declare function duckdb_value_int64(byval result as duckdb_result ptr, byval col as idx_t, byval row as idx_t) as longint
declare function duckdb_value_hugeint(byval result as duckdb_result ptr, byval col as idx_t, byval row as idx_t) as duckdb_hugeint
declare function duckdb_value_uhugeint(byval result as duckdb_result ptr, byval col as idx_t, byval row as idx_t) as duckdb_uhugeint
declare function duckdb_value_decimal(byval result as duckdb_result ptr, byval col as idx_t, byval row as idx_t) as duckdb_decimal
declare function duckdb_value_uint8(byval result as duckdb_result ptr, byval col as idx_t, byval row as idx_t) as ubyte
declare function duckdb_value_uint16(byval result as duckdb_result ptr, byval col as idx_t, byval row as idx_t) as ushort
declare function duckdb_value_uint32(byval result as duckdb_result ptr, byval col as idx_t, byval row as idx_t) as ulong
declare function duckdb_value_uint64(byval result as duckdb_result ptr, byval col as idx_t, byval row as idx_t) as ulongint
declare function duckdb_value_float(byval result as duckdb_result ptr, byval col as idx_t, byval row as idx_t) as single
declare function duckdb_value_double(byval result as duckdb_result ptr, byval col as idx_t, byval row as idx_t) as double
declare function duckdb_value_date(byval result as duckdb_result ptr, byval col as idx_t, byval row as idx_t) as duckdb_date
declare function duckdb_value_time(byval result as duckdb_result ptr, byval col as idx_t, byval row as idx_t) as duckdb_time
declare function duckdb_value_timestamp(byval result as duckdb_result ptr, byval col as idx_t, byval row as idx_t) as duckdb_timestamp
declare function duckdb_value_interval(byval result as duckdb_result ptr, byval col as idx_t, byval row as idx_t) as duckdb_interval
declare function duckdb_value_varchar(byval result as duckdb_result ptr, byval col as idx_t, byval row as idx_t) as zstring ptr
declare function duckdb_value_string(byval result as duckdb_result ptr, byval col as idx_t, byval row as idx_t) as duckdb_string
declare function duckdb_value_varchar_internal(byval result as duckdb_result ptr, byval col as idx_t, byval row as idx_t) as zstring ptr
declare function duckdb_value_string_internal(byval result as duckdb_result ptr, byval col as idx_t, byval row as idx_t) as duckdb_string
declare function duckdb_value_blob(byval result as duckdb_result ptr, byval col as idx_t, byval row as idx_t) as duckdb_blob
declare function duckdb_value_is_null(byval result as duckdb_result ptr, byval col as idx_t, byval row as idx_t) as bool
declare function duckdb_malloc(byval size as uinteger) as any ptr
declare sub duckdb_free(byval ptr as any ptr)
declare function duckdb_vector_size() as idx_t
declare function duckdb_string_is_inlined(byval string as duckdb_string_t) as bool
declare function duckdb_string_t_length(byval string as duckdb_string_t) as ulong
declare function duckdb_string_t_data(byval string as duckdb_string_t ptr) as const zstring ptr
declare function duckdb_from_date(byval date as duckdb_date) as duckdb_date_struct
declare function duckdb_to_date(byval date as duckdb_date_struct) as duckdb_date
declare function duckdb_is_finite_date(byval date as duckdb_date) as bool
declare function duckdb_from_time(byval time as duckdb_time) as duckdb_time_struct
declare function duckdb_create_time_tz(byval micros as longint, byval offset as long) as duckdb_time_tz
declare function duckdb_from_time_tz(byval micros as duckdb_time_tz) as duckdb_time_tz_struct
declare function duckdb_to_time(byval time as duckdb_time_struct) as duckdb_time
declare function duckdb_from_timestamp(byval ts as duckdb_timestamp) as duckdb_timestamp_struct
declare function duckdb_to_timestamp(byval ts as duckdb_timestamp_struct) as duckdb_timestamp
declare function duckdb_is_finite_timestamp(byval ts as duckdb_timestamp) as bool
declare function duckdb_is_finite_timestamp_s(byval ts as duckdb_timestamp_s) as bool
declare function duckdb_is_finite_timestamp_ms(byval ts as duckdb_timestamp_ms) as bool
declare function duckdb_is_finite_timestamp_ns(byval ts as duckdb_timestamp_ns) as bool
declare function duckdb_hugeint_to_double(byval val as duckdb_hugeint) as double
declare function duckdb_double_to_hugeint(byval val as double) as duckdb_hugeint
declare function duckdb_uhugeint_to_double(byval val as duckdb_uhugeint) as double
declare function duckdb_double_to_uhugeint(byval val as double) as duckdb_uhugeint
declare function duckdb_double_to_decimal(byval val as double, byval width as ubyte, byval scale as ubyte) as duckdb_decimal
declare function duckdb_decimal_to_double(byval val as duckdb_decimal) as double
declare function duckdb_prepare(byval connection as duckdb_connection, byval query as const zstring ptr, byval out_prepared_statement as duckdb_prepared_statement ptr) as duckdb_state
declare sub duckdb_destroy_prepare(byval prepared_statement as duckdb_prepared_statement ptr)
declare function duckdb_prepare_error(byval prepared_statement as duckdb_prepared_statement) as const zstring ptr
declare function duckdb_nparams(byval prepared_statement as duckdb_prepared_statement) as idx_t
declare function duckdb_parameter_name(byval prepared_statement as duckdb_prepared_statement, byval index as idx_t) as const zstring ptr
declare function duckdb_param_type(byval prepared_statement as duckdb_prepared_statement, byval param_idx as idx_t) as duckdb_type
declare function duckdb_param_logical_type(byval prepared_statement as duckdb_prepared_statement, byval param_idx as idx_t) as duckdb_logical_type
declare function duckdb_clear_bindings(byval prepared_statement as duckdb_prepared_statement) as duckdb_state
declare function duckdb_prepared_statement_type(byval statement as duckdb_prepared_statement) as duckdb_statement_type
declare function duckdb_prepared_statement_column_count(byval prepared_statement as duckdb_prepared_statement) as idx_t
declare function duckdb_prepared_statement_column_name(byval prepared_statement as duckdb_prepared_statement, byval col_idx as idx_t) as const zstring ptr
declare function duckdb_prepared_statement_column_logical_type(byval prepared_statement as duckdb_prepared_statement, byval col_idx as idx_t) as duckdb_logical_type
declare function duckdb_prepared_statement_column_type(byval prepared_statement as duckdb_prepared_statement, byval col_idx as idx_t) as duckdb_type
declare function duckdb_bind_value(byval prepared_statement as duckdb_prepared_statement, byval param_idx as idx_t, byval val as duckdb_value) as duckdb_state
declare function duckdb_bind_parameter_index(byval prepared_statement as duckdb_prepared_statement, byval param_idx_out as idx_t ptr, byval name as const zstring ptr) as duckdb_state
declare function duckdb_bind_boolean(byval prepared_statement as duckdb_prepared_statement, byval param_idx as idx_t, byval val as bool) as duckdb_state
declare function duckdb_bind_int8(byval prepared_statement as duckdb_prepared_statement, byval param_idx as idx_t, byval val as byte) as duckdb_state
declare function duckdb_bind_int16(byval prepared_statement as duckdb_prepared_statement, byval param_idx as idx_t, byval val as short) as duckdb_state
declare function duckdb_bind_int32(byval prepared_statement as duckdb_prepared_statement, byval param_idx as idx_t, byval val as long) as duckdb_state
declare function duckdb_bind_int64(byval prepared_statement as duckdb_prepared_statement, byval param_idx as idx_t, byval val as longint) as duckdb_state
declare function duckdb_bind_hugeint(byval prepared_statement as duckdb_prepared_statement, byval param_idx as idx_t, byval val as duckdb_hugeint) as duckdb_state
declare function duckdb_bind_uhugeint(byval prepared_statement as duckdb_prepared_statement, byval param_idx as idx_t, byval val as duckdb_uhugeint) as duckdb_state
declare function duckdb_bind_decimal(byval prepared_statement as duckdb_prepared_statement, byval param_idx as idx_t, byval val as duckdb_decimal) as duckdb_state
declare function duckdb_bind_uint8(byval prepared_statement as duckdb_prepared_statement, byval param_idx as idx_t, byval val as ubyte) as duckdb_state
declare function duckdb_bind_uint16(byval prepared_statement as duckdb_prepared_statement, byval param_idx as idx_t, byval val as ushort) as duckdb_state
declare function duckdb_bind_uint32(byval prepared_statement as duckdb_prepared_statement, byval param_idx as idx_t, byval val as ulong) as duckdb_state
declare function duckdb_bind_uint64(byval prepared_statement as duckdb_prepared_statement, byval param_idx as idx_t, byval val as ulongint) as duckdb_state
declare function duckdb_bind_float(byval prepared_statement as duckdb_prepared_statement, byval param_idx as idx_t, byval val as single) as duckdb_state
declare function duckdb_bind_double(byval prepared_statement as duckdb_prepared_statement, byval param_idx as idx_t, byval val as double) as duckdb_state
declare function duckdb_bind_date(byval prepared_statement as duckdb_prepared_statement, byval param_idx as idx_t, byval val as duckdb_date) as duckdb_state
declare function duckdb_bind_time(byval prepared_statement as duckdb_prepared_statement, byval param_idx as idx_t, byval val as duckdb_time) as duckdb_state
declare function duckdb_bind_timestamp(byval prepared_statement as duckdb_prepared_statement, byval param_idx as idx_t, byval val as duckdb_timestamp) as duckdb_state
declare function duckdb_bind_timestamp_tz(byval prepared_statement as duckdb_prepared_statement, byval param_idx as idx_t, byval val as duckdb_timestamp) as duckdb_state
declare function duckdb_bind_interval(byval prepared_statement as duckdb_prepared_statement, byval param_idx as idx_t, byval val as duckdb_interval) as duckdb_state
declare function duckdb_bind_varchar(byval prepared_statement as duckdb_prepared_statement, byval param_idx as idx_t, byval val as const zstring ptr) as duckdb_state
declare function duckdb_bind_varchar_length(byval prepared_statement as duckdb_prepared_statement, byval param_idx as idx_t, byval val as const zstring ptr, byval length as idx_t) as duckdb_state
declare function duckdb_bind_blob(byval prepared_statement as duckdb_prepared_statement, byval param_idx as idx_t, byval data as const any ptr, byval length as idx_t) as duckdb_state
declare function duckdb_bind_null(byval prepared_statement as duckdb_prepared_statement, byval param_idx as idx_t) as duckdb_state
declare function duckdb_execute_prepared(byval prepared_statement as duckdb_prepared_statement, byval out_result as duckdb_result ptr) as duckdb_state
declare function duckdb_execute_prepared_streaming(byval prepared_statement as duckdb_prepared_statement, byval out_result as duckdb_result ptr) as duckdb_state
declare function duckdb_extract_statements(byval connection as duckdb_connection, byval query as const zstring ptr, byval out_extracted_statements as duckdb_extracted_statements ptr) as idx_t
declare function duckdb_prepare_extracted_statement(byval connection as duckdb_connection, byval extracted_statements as duckdb_extracted_statements, byval index as idx_t, byval out_prepared_statement as duckdb_prepared_statement ptr) as duckdb_state
declare function duckdb_extract_statements_error(byval extracted_statements as duckdb_extracted_statements) as const zstring ptr
declare sub duckdb_destroy_extracted(byval extracted_statements as duckdb_extracted_statements ptr)
declare function duckdb_pending_prepared(byval prepared_statement as duckdb_prepared_statement, byval out_result as duckdb_pending_result ptr) as duckdb_state
declare function duckdb_pending_prepared_streaming(byval prepared_statement as duckdb_prepared_statement, byval out_result as duckdb_pending_result ptr) as duckdb_state
Declare Sub duckdb_destroy_pending(ByVal pending_result As duckdb_pending_result Ptr)
Declare Function duckdb_pending_error(ByVal pending_result As duckdb_pending_result) As Const ZString Ptr
declare function duckdb_pending_execute_task(byval pending_result as duckdb_pending_result) as duckdb_pending_state
declare function duckdb_pending_execute_check_state(byval pending_result as duckdb_pending_result) as duckdb_pending_state
declare function duckdb_execute_pending(byval pending_result as duckdb_pending_result, byval out_result as duckdb_result ptr) as duckdb_state
declare function duckdb_pending_execution_is_finished(byval pending_state as duckdb_pending_state) as bool
declare sub duckdb_destroy_value(byval value as duckdb_value ptr)
declare function duckdb_create_varchar(byval text as const zstring ptr) as duckdb_value
declare function duckdb_create_varchar_length(byval text as const zstring ptr, byval length as idx_t) as duckdb_value
declare function duckdb_create_bool(byval input as bool) as duckdb_value
declare function duckdb_create_int8(byval input as byte) as duckdb_value
declare function duckdb_create_uint8(byval input as ubyte) as duckdb_value
declare function duckdb_create_int16(byval input as short) as duckdb_value
declare function duckdb_create_uint16(byval input as ushort) as duckdb_value
declare function duckdb_create_int32(byval input as long) as duckdb_value
declare function duckdb_create_uint32(byval input as ulong) as duckdb_value
declare function duckdb_create_uint64(byval input as ulongint) as duckdb_value
declare function duckdb_create_int64(byval val as longint) as duckdb_value
declare function duckdb_create_hugeint(byval input as duckdb_hugeint) as duckdb_value
declare function duckdb_create_uhugeint(byval input as duckdb_uhugeint) as duckdb_value
declare function duckdb_create_bignum(byval input as duckdb_bignum) as duckdb_value
declare function duckdb_create_decimal(byval input as duckdb_decimal) as duckdb_value
declare function duckdb_create_float(byval input as single) as duckdb_value
declare function duckdb_create_double(byval input as double) as duckdb_value
declare function duckdb_create_date(byval input as duckdb_date) as duckdb_value
declare function duckdb_create_time(byval input as duckdb_time) as duckdb_value
declare function duckdb_create_time_ns(byval input as duckdb_time_ns) as duckdb_value
declare function duckdb_create_time_tz_value(byval value as duckdb_time_tz) as duckdb_value
declare function duckdb_create_timestamp(byval input as duckdb_timestamp) as duckdb_value
declare function duckdb_create_timestamp_tz(byval input as duckdb_timestamp) as duckdb_value
declare function duckdb_create_timestamp_s(byval input as duckdb_timestamp_s) as duckdb_value
declare function duckdb_create_timestamp_ms(byval input as duckdb_timestamp_ms) as duckdb_value
declare function duckdb_create_timestamp_ns(byval input as duckdb_timestamp_ns) as duckdb_value
declare function duckdb_create_interval(byval input as duckdb_interval) as duckdb_value
declare function duckdb_create_blob(byval data as const ubyte ptr, byval length as idx_t) as duckdb_value
declare function duckdb_create_bit(byval input as duckdb_bit) as duckdb_value
declare function duckdb_create_uuid(byval input as duckdb_uhugeint) as duckdb_value
declare function duckdb_get_bool(byval val as duckdb_value) as bool
declare function duckdb_get_int8(byval val as duckdb_value) as byte
declare function duckdb_get_uint8(byval val as duckdb_value) as ubyte
declare function duckdb_get_int16(byval val as duckdb_value) as short
declare function duckdb_get_uint16(byval val as duckdb_value) as ushort
declare function duckdb_get_int32(byval val as duckdb_value) as long
declare function duckdb_get_uint32(byval val as duckdb_value) as ulong
declare function duckdb_get_int64(byval val as duckdb_value) as longint
declare function duckdb_get_uint64(byval val as duckdb_value) as ulongint
declare function duckdb_get_hugeint(byval val as duckdb_value) as duckdb_hugeint
declare function duckdb_get_uhugeint(byval val as duckdb_value) as duckdb_uhugeint
declare function duckdb_get_bignum(byval val as duckdb_value) as duckdb_bignum
declare function duckdb_get_decimal(byval val as duckdb_value) as duckdb_decimal
declare function duckdb_get_float(byval val as duckdb_value) as single
declare function duckdb_get_double(byval val as duckdb_value) as double
declare function duckdb_get_date(byval val as duckdb_value) as duckdb_date
declare function duckdb_get_time(byval val as duckdb_value) as duckdb_time
declare function duckdb_get_time_ns(byval val as duckdb_value) as duckdb_time_ns
declare function duckdb_get_time_tz(byval val as duckdb_value) as duckdb_time_tz
declare function duckdb_get_timestamp(byval val as duckdb_value) as duckdb_timestamp
declare function duckdb_get_timestamp_tz(byval val as duckdb_value) as duckdb_timestamp
declare function duckdb_get_timestamp_s(byval val as duckdb_value) as duckdb_timestamp_s
declare function duckdb_get_timestamp_ms(byval val as duckdb_value) as duckdb_timestamp_ms
declare function duckdb_get_timestamp_ns(byval val as duckdb_value) as duckdb_timestamp_ns
declare function duckdb_get_interval(byval val as duckdb_value) as duckdb_interval
declare function duckdb_get_value_type(byval val as duckdb_value) as duckdb_logical_type
declare function duckdb_get_blob(byval val as duckdb_value) as duckdb_blob
declare function duckdb_get_bit(byval val as duckdb_value) as duckdb_bit
declare function duckdb_get_uuid(byval val as duckdb_value) as duckdb_uhugeint
declare function duckdb_get_varchar(byval value as duckdb_value) as zstring ptr
declare function duckdb_create_struct_value(byval type as duckdb_logical_type, byval values as duckdb_value ptr) as duckdb_value
declare function duckdb_create_list_value(byval type as duckdb_logical_type, byval values as duckdb_value ptr, byval value_count as idx_t) as duckdb_value
declare function duckdb_create_array_value(byval type as duckdb_logical_type, byval values as duckdb_value ptr, byval value_count as idx_t) as duckdb_value
declare function duckdb_create_map_value(byval map_type as duckdb_logical_type, byval keys as duckdb_value ptr, byval values as duckdb_value ptr, byval entry_count as idx_t) as duckdb_value
declare function duckdb_create_union_value(byval union_type as duckdb_logical_type, byval tag_index as idx_t, byval value as duckdb_value) as duckdb_value
declare function duckdb_get_map_size(byval value as duckdb_value) as idx_t
declare function duckdb_get_map_key(byval value as duckdb_value, byval index as idx_t) as duckdb_value
declare function duckdb_get_map_value(byval value as duckdb_value, byval index as idx_t) as duckdb_value
declare function duckdb_is_null_value(byval value as duckdb_value) as bool
declare function duckdb_create_null_value() as duckdb_value
declare function duckdb_get_list_size(byval value as duckdb_value) as idx_t
declare function duckdb_get_list_child(byval value as duckdb_value, byval index as idx_t) as duckdb_value
declare function duckdb_create_enum_value(byval type as duckdb_logical_type, byval value as ulongint) as duckdb_value
declare function duckdb_get_enum_value(byval value as duckdb_value) as ulongint
declare function duckdb_get_struct_child(byval value as duckdb_value, byval index as idx_t) as duckdb_value
declare function duckdb_value_to_string(byval value as duckdb_value) as zstring ptr
declare function duckdb_create_logical_type(byval type as duckdb_type) as duckdb_logical_type
declare function duckdb_logical_type_get_alias(byval type as duckdb_logical_type) as zstring ptr
declare sub duckdb_logical_type_set_alias(byval type as duckdb_logical_type, byval alias as const zstring ptr)
declare function duckdb_create_list_type(byval type as duckdb_logical_type) as duckdb_logical_type
declare function duckdb_create_array_type(byval type as duckdb_logical_type, byval array_size as idx_t) as duckdb_logical_type
declare function duckdb_create_map_type(byval key_type as duckdb_logical_type, byval value_type as duckdb_logical_type) as duckdb_logical_type
declare function duckdb_create_union_type(byval member_types as duckdb_logical_type ptr, byval member_names as const zstring ptr ptr, byval member_count as idx_t) as duckdb_logical_type
declare function duckdb_create_struct_type(byval member_types as duckdb_logical_type ptr, byval member_names as const zstring ptr ptr, byval member_count as idx_t) as duckdb_logical_type
declare function duckdb_create_enum_type(byval member_names as const zstring ptr ptr, byval member_count as idx_t) as duckdb_logical_type
declare function duckdb_create_decimal_type(byval width as ubyte, byval scale as ubyte) as duckdb_logical_type
declare function duckdb_get_type_id(byval type as duckdb_logical_type) as duckdb_type
declare function duckdb_decimal_width(byval type as duckdb_logical_type) as ubyte
declare function duckdb_decimal_scale(byval type as duckdb_logical_type) as ubyte
declare function duckdb_decimal_internal_type(byval type as duckdb_logical_type) as duckdb_type
declare function duckdb_enum_internal_type(byval type as duckdb_logical_type) as duckdb_type
declare function duckdb_enum_dictionary_size(byval type as duckdb_logical_type) as ulong
declare function duckdb_enum_dictionary_value(byval type as duckdb_logical_type, byval index as idx_t) as zstring ptr
declare function duckdb_list_type_child_type(byval type as duckdb_logical_type) as duckdb_logical_type
declare function duckdb_array_type_child_type(byval type as duckdb_logical_type) as duckdb_logical_type
declare function duckdb_array_type_array_size(byval type as duckdb_logical_type) as idx_t
declare function duckdb_map_type_key_type(byval type as duckdb_logical_type) as duckdb_logical_type
declare function duckdb_map_type_value_type(byval type as duckdb_logical_type) as duckdb_logical_type
declare function duckdb_struct_type_child_count(byval type as duckdb_logical_type) as idx_t
declare function duckdb_struct_type_child_name(byval type as duckdb_logical_type, byval index as idx_t) as zstring ptr
declare function duckdb_struct_type_child_type(byval type as duckdb_logical_type, byval index as idx_t) as duckdb_logical_type
declare function duckdb_union_type_member_count(byval type as duckdb_logical_type) as idx_t
declare function duckdb_union_type_member_name(byval type as duckdb_logical_type, byval index as idx_t) as zstring ptr
declare function duckdb_union_type_member_type(byval type as duckdb_logical_type, byval index as idx_t) as duckdb_logical_type
declare sub duckdb_destroy_logical_type(byval type as duckdb_logical_type ptr)
declare function duckdb_register_logical_type(byval con as duckdb_connection, byval type as duckdb_logical_type, byval info as duckdb_create_type_info) as duckdb_state
declare function duckdb_create_data_chunk(byval types as duckdb_logical_type ptr, byval column_count as idx_t) as duckdb_data_chunk
declare sub duckdb_destroy_data_chunk(byval chunk as duckdb_data_chunk ptr)
declare sub duckdb_data_chunk_reset(byval chunk as duckdb_data_chunk)
declare function duckdb_data_chunk_get_column_count(byval chunk as duckdb_data_chunk) as idx_t
declare function duckdb_data_chunk_get_vector(byval chunk as duckdb_data_chunk, byval col_idx as idx_t) as duckdb_vector
declare function duckdb_data_chunk_get_size(byval chunk as duckdb_data_chunk) as idx_t
declare sub duckdb_data_chunk_set_size(byval chunk as duckdb_data_chunk, byval size as idx_t)
declare function duckdb_create_vector(byval type as duckdb_logical_type, byval capacity as idx_t) as duckdb_vector
declare sub duckdb_destroy_vector(byval vector as duckdb_vector ptr)
declare function duckdb_vector_get_column_type(byval vector as duckdb_vector) as duckdb_logical_type
declare function duckdb_vector_get_data(byval vector as duckdb_vector) as any ptr
declare function duckdb_vector_get_validity(byval vector as duckdb_vector) as ulongint ptr
declare sub duckdb_vector_ensure_validity_writable(byval vector as duckdb_vector)
declare sub duckdb_vector_assign_string_element(byval vector as duckdb_vector, byval index as idx_t, byval str as const zstring ptr)
declare sub duckdb_vector_assign_string_element_len(byval vector as duckdb_vector, byval index as idx_t, byval str as const zstring ptr, byval str_len as idx_t)
declare function duckdb_list_vector_get_child(byval vector as duckdb_vector) as duckdb_vector
declare function duckdb_list_vector_get_size(byval vector as duckdb_vector) as idx_t
declare function duckdb_list_vector_set_size(byval vector as duckdb_vector, byval size as idx_t) as duckdb_state
declare function duckdb_list_vector_reserve(byval vector as duckdb_vector, byval required_capacity as idx_t) as duckdb_state
declare function duckdb_struct_vector_get_child(byval vector as duckdb_vector, byval index as idx_t) as duckdb_vector
declare function duckdb_array_vector_get_child(byval vector as duckdb_vector) as duckdb_vector
declare sub duckdb_slice_vector(byval vector as duckdb_vector, byval sel as duckdb_selection_vector, byval len as idx_t)
declare sub duckdb_vector_copy_sel(byval src as duckdb_vector, byval dst as duckdb_vector, byval sel as duckdb_selection_vector, byval src_count as idx_t, byval src_offset as idx_t, byval dst_offset as idx_t)
declare sub duckdb_vector_reference_value(byval vector as duckdb_vector, byval value as duckdb_value)
declare sub duckdb_vector_reference_vector(byval to_vector as duckdb_vector, byval from_vector as duckdb_vector)
declare function duckdb_validity_row_is_valid(byval validity as ulongint ptr, byval row as idx_t) as bool
declare sub duckdb_validity_set_row_validity(byval validity as ulongint ptr, byval row as idx_t, byval valid as bool)
declare sub duckdb_validity_set_row_invalid(byval validity as ulongint ptr, byval row as idx_t)
declare sub duckdb_validity_set_row_valid(byval validity as ulongint ptr, byval row as idx_t)
declare function duckdb_create_scalar_function() as duckdb_scalar_function
declare sub duckdb_destroy_scalar_function(byval scalar_function as duckdb_scalar_function ptr)
declare sub duckdb_scalar_function_set_name(byval scalar_function as duckdb_scalar_function, byval name as const zstring ptr)
declare sub duckdb_scalar_function_set_varargs(byval scalar_function as duckdb_scalar_function, byval type as duckdb_logical_type)
declare sub duckdb_scalar_function_set_special_handling(byval scalar_function as duckdb_scalar_function)
declare sub duckdb_scalar_function_set_volatile(byval scalar_function as duckdb_scalar_function)
declare sub duckdb_scalar_function_add_parameter(byval scalar_function as duckdb_scalar_function, byval type as duckdb_logical_type)
declare sub duckdb_scalar_function_set_return_type(byval scalar_function as duckdb_scalar_function, byval type as duckdb_logical_type)
declare sub duckdb_scalar_function_set_extra_info(byval scalar_function as duckdb_scalar_function, byval extra_info as any ptr, byval destroy as duckdb_delete_callback_t)
declare sub duckdb_scalar_function_set_bind(byval scalar_function as duckdb_scalar_function, byval bind as duckdb_scalar_function_bind_t)
declare sub duckdb_scalar_function_set_bind_data(byval info as duckdb_bind_info, byval bind_data as any ptr, byval destroy as duckdb_delete_callback_t)
declare sub duckdb_scalar_function_set_bind_data_copy(byval info as duckdb_bind_info, byval copy as duckdb_copy_callback_t)
declare sub duckdb_scalar_function_bind_set_error(byval info as duckdb_bind_info, byval error as const zstring ptr)
declare sub duckdb_scalar_function_set_function(byval scalar_function as duckdb_scalar_function, byval function as duckdb_scalar_function_t)
declare function duckdb_register_scalar_function(byval con as duckdb_connection, byval scalar_function as duckdb_scalar_function) as duckdb_state
declare function duckdb_scalar_function_get_extra_info(byval info as duckdb_function_info) as any ptr
declare function duckdb_scalar_function_bind_get_extra_info(byval info as duckdb_bind_info) as any ptr
declare function duckdb_scalar_function_get_bind_data(byval info as duckdb_function_info) as any ptr
declare sub duckdb_scalar_function_get_client_context(byval info as duckdb_bind_info, byval out_context as duckdb_client_context ptr)
declare sub duckdb_scalar_function_set_error(byval info as duckdb_function_info, byval error as const zstring ptr)
declare function duckdb_create_scalar_function_set(byval name as const zstring ptr) as duckdb_scalar_function_set
declare sub duckdb_destroy_scalar_function_set(byval scalar_function_set as duckdb_scalar_function_set ptr)
declare function duckdb_add_scalar_function_to_set(byval set as duckdb_scalar_function_set, byval function as duckdb_scalar_function) as duckdb_state
declare function duckdb_register_scalar_function_set(byval con as duckdb_connection, byval set as duckdb_scalar_function_set) as duckdb_state
declare function duckdb_scalar_function_bind_get_argument_count(byval info as duckdb_bind_info) as idx_t
declare function duckdb_scalar_function_bind_get_argument(byval info as duckdb_bind_info, byval index as idx_t) as duckdb_expression
declare function duckdb_create_selection_vector(byval size as idx_t) as duckdb_selection_vector
declare sub duckdb_destroy_selection_vector(byval sel as duckdb_selection_vector)
declare function duckdb_selection_vector_get_data_ptr(byval sel as duckdb_selection_vector) as sel_t ptr
declare function duckdb_create_aggregate_function() as duckdb_aggregate_function
declare sub duckdb_destroy_aggregate_function(byval aggregate_function as duckdb_aggregate_function ptr)
declare sub duckdb_aggregate_function_set_name(byval aggregate_function as duckdb_aggregate_function, byval name as const zstring ptr)
declare sub duckdb_aggregate_function_add_parameter(byval aggregate_function as duckdb_aggregate_function, byval type as duckdb_logical_type)
declare sub duckdb_aggregate_function_set_return_type(byval aggregate_function as duckdb_aggregate_function, byval type as duckdb_logical_type)
declare sub duckdb_aggregate_function_set_functions(byval aggregate_function as duckdb_aggregate_function, byval state_size as duckdb_aggregate_state_size, byval state_init as duckdb_aggregate_init_t, byval update as duckdb_aggregate_update_t, byval combine as duckdb_aggregate_combine_t, byval finalize as duckdb_aggregate_finalize_t)
declare sub duckdb_aggregate_function_set_destructor(byval aggregate_function as duckdb_aggregate_function, byval destroy as duckdb_aggregate_destroy_t)
declare function duckdb_register_aggregate_function(byval con as duckdb_connection, byval aggregate_function as duckdb_aggregate_function) as duckdb_state
declare sub duckdb_aggregate_function_set_special_handling(byval aggregate_function as duckdb_aggregate_function)
declare sub duckdb_aggregate_function_set_extra_info(byval aggregate_function as duckdb_aggregate_function, byval extra_info as any ptr, byval destroy as duckdb_delete_callback_t)
declare function duckdb_aggregate_function_get_extra_info(byval info as duckdb_function_info) as any ptr
declare sub duckdb_aggregate_function_set_error(byval info as duckdb_function_info, byval error as const zstring ptr)
declare function duckdb_create_aggregate_function_set(byval name as const zstring ptr) as duckdb_aggregate_function_set
declare sub duckdb_destroy_aggregate_function_set(byval aggregate_function_set as duckdb_aggregate_function_set ptr)
declare function duckdb_add_aggregate_function_to_set(byval set as duckdb_aggregate_function_set, byval function as duckdb_aggregate_function) as duckdb_state
declare function duckdb_register_aggregate_function_set(byval con as duckdb_connection, byval set as duckdb_aggregate_function_set) as duckdb_state
declare function duckdb_create_table_function() as duckdb_table_function
declare sub duckdb_destroy_table_function(byval table_function as duckdb_table_function ptr)
declare sub duckdb_table_function_set_name(byval table_function as duckdb_table_function, byval name as const zstring ptr)
declare sub duckdb_table_function_add_parameter(byval table_function as duckdb_table_function, byval type as duckdb_logical_type)
declare sub duckdb_table_function_add_named_parameter(byval table_function as duckdb_table_function, byval name as const zstring ptr, byval type as duckdb_logical_type)
declare sub duckdb_table_function_set_extra_info(byval table_function as duckdb_table_function, byval extra_info as any ptr, byval destroy as duckdb_delete_callback_t)
declare sub duckdb_table_function_set_bind(byval table_function as duckdb_table_function, byval bind as duckdb_table_function_bind_t)
declare sub duckdb_table_function_set_init(byval table_function as duckdb_table_function, byval init as duckdb_table_function_init_t)
declare sub duckdb_table_function_set_local_init(byval table_function as duckdb_table_function, byval init as duckdb_table_function_init_t)
declare sub duckdb_table_function_set_function(byval table_function as duckdb_table_function, byval function as duckdb_table_function_t)
declare sub duckdb_table_function_supports_projection_pushdown(byval table_function as duckdb_table_function, byval pushdown as bool)
declare function duckdb_register_table_function(byval con as duckdb_connection, byval function as duckdb_table_function) as duckdb_state
declare function duckdb_bind_get_extra_info(byval info as duckdb_bind_info) as any ptr
declare sub duckdb_table_function_get_client_context(byval info as duckdb_bind_info, byval out_context as duckdb_client_context ptr)
declare sub duckdb_bind_add_result_column(byval info as duckdb_bind_info, byval name as const zstring ptr, byval type as duckdb_logical_type)
declare function duckdb_bind_get_parameter_count(byval info as duckdb_bind_info) as idx_t
declare function duckdb_bind_get_parameter(byval info as duckdb_bind_info, byval index as idx_t) as duckdb_value
declare function duckdb_bind_get_named_parameter(byval info as duckdb_bind_info, byval name as const zstring ptr) as duckdb_value
declare sub duckdb_bind_set_bind_data(byval info as duckdb_bind_info, byval bind_data as any ptr, byval destroy as duckdb_delete_callback_t)
declare sub duckdb_bind_set_cardinality(byval info as duckdb_bind_info, byval cardinality as idx_t, byval is_exact as bool)
declare sub duckdb_bind_set_error(byval info as duckdb_bind_info, byval error as const zstring ptr)
declare function duckdb_init_get_extra_info(byval info as duckdb_init_info) as any ptr
declare function duckdb_init_get_bind_data(byval info as duckdb_init_info) as any ptr
declare sub duckdb_init_set_init_data(byval info as duckdb_init_info, byval init_data as any ptr, byval destroy as duckdb_delete_callback_t)
declare function duckdb_init_get_column_count(byval info as duckdb_init_info) as idx_t
declare function duckdb_init_get_column_index(byval info as duckdb_init_info, byval column_index as idx_t) as idx_t
declare sub duckdb_init_set_max_threads(byval info as duckdb_init_info, byval max_threads as idx_t)
declare sub duckdb_init_set_error(byval info as duckdb_init_info, byval error as const zstring ptr)
declare function duckdb_function_get_extra_info(byval info as duckdb_function_info) as any ptr
declare function duckdb_function_get_bind_data(byval info as duckdb_function_info) as any ptr
declare function duckdb_function_get_init_data(byval info as duckdb_function_info) as any ptr
declare function duckdb_function_get_local_init_data(byval info as duckdb_function_info) as any ptr
declare sub duckdb_function_set_error(byval info as duckdb_function_info, byval error as const zstring ptr)
declare sub duckdb_add_replacement_scan(byval db as duckdb_database, byval replacement as duckdb_replacement_callback_t, byval extra_data as any ptr, byval delete_callback as duckdb_delete_callback_t)
declare sub duckdb_replacement_scan_set_function_name(byval info as duckdb_replacement_scan_info, byval function_name as const zstring ptr)
declare sub duckdb_replacement_scan_add_parameter(byval info as duckdb_replacement_scan_info, byval parameter as duckdb_value)
declare sub duckdb_replacement_scan_set_error(byval info as duckdb_replacement_scan_info, byval error as const zstring ptr)
declare function duckdb_get_profiling_info(byval connection as duckdb_connection) as duckdb_profiling_info
declare function duckdb_profiling_info_get_value(byval info as duckdb_profiling_info, byval key as const zstring ptr) as duckdb_value
declare function duckdb_profiling_info_get_metrics(byval info as duckdb_profiling_info) as duckdb_value
declare function duckdb_profiling_info_get_child_count(byval info as duckdb_profiling_info) as idx_t
declare function duckdb_profiling_info_get_child(byval info as duckdb_profiling_info, byval index as idx_t) as duckdb_profiling_info
declare function duckdb_appender_create(byval connection as duckdb_connection, byval schema as const zstring ptr, byval table as const zstring ptr, byval out_appender as duckdb_appender ptr) as duckdb_state
declare function duckdb_appender_create_ext(byval connection as duckdb_connection, byval catalog as const zstring ptr, byval schema as const zstring ptr, byval table as const zstring ptr, byval out_appender as duckdb_appender ptr) as duckdb_state
declare function duckdb_appender_create_query(byval connection as duckdb_connection, byval query as const zstring ptr, byval column_count as idx_t, byval types as duckdb_logical_type ptr, byval table_name as const zstring ptr, byval column_names as const zstring ptr ptr, byval out_appender as duckdb_appender ptr) as duckdb_state
declare function duckdb_appender_column_count(byval appender as duckdb_appender) as idx_t
declare function duckdb_appender_column_type(byval appender as duckdb_appender, byval col_idx as idx_t) as duckdb_logical_type
declare function duckdb_appender_error(byval appender as duckdb_appender) as const zstring ptr
declare function duckdb_appender_error_data(byval appender as duckdb_appender) as duckdb_error_data
declare function duckdb_appender_flush(byval appender as duckdb_appender) as duckdb_state
declare function duckdb_appender_close(byval appender as duckdb_appender) as duckdb_state
declare function duckdb_appender_destroy(byval appender as duckdb_appender ptr) as duckdb_state
declare function duckdb_appender_add_column(byval appender as duckdb_appender, byval name as const zstring ptr) as duckdb_state
declare function duckdb_appender_clear_columns(byval appender as duckdb_appender) as duckdb_state
declare function duckdb_appender_begin_row(byval appender as duckdb_appender) as duckdb_state
declare function duckdb_appender_end_row(byval appender as duckdb_appender) as duckdb_state
declare function duckdb_append_default(byval appender as duckdb_appender) as duckdb_state
declare function duckdb_append_default_to_chunk(byval appender as duckdb_appender, byval chunk as duckdb_data_chunk, byval col as idx_t, byval row as idx_t) as duckdb_state
declare function duckdb_append_bool(byval appender as duckdb_appender, byval value as bool) as duckdb_state
declare function duckdb_append_int8(byval appender as duckdb_appender, byval value as byte) as duckdb_state
declare function duckdb_append_int16(byval appender as duckdb_appender, byval value as short) as duckdb_state
declare function duckdb_append_int32(byval appender as duckdb_appender, byval value as long) as duckdb_state
declare function duckdb_append_int64(byval appender as duckdb_appender, byval value as longint) as duckdb_state
declare function duckdb_append_hugeint(byval appender as duckdb_appender, byval value as duckdb_hugeint) as duckdb_state
declare function duckdb_append_uint8(byval appender as duckdb_appender, byval value as ubyte) as duckdb_state
declare function duckdb_append_uint16(byval appender as duckdb_appender, byval value as ushort) as duckdb_state
declare function duckdb_append_uint32(byval appender as duckdb_appender, byval value as ulong) as duckdb_state
declare function duckdb_append_uint64(byval appender as duckdb_appender, byval value as ulongint) as duckdb_state
declare function duckdb_append_uhugeint(byval appender as duckdb_appender, byval value as duckdb_uhugeint) as duckdb_state
declare function duckdb_append_float(byval appender as duckdb_appender, byval value as single) as duckdb_state
declare function duckdb_append_double(byval appender as duckdb_appender, byval value as double) as duckdb_state
declare function duckdb_append_date(byval appender as duckdb_appender, byval value as duckdb_date) as duckdb_state
declare function duckdb_append_time(byval appender as duckdb_appender, byval value as duckdb_time) as duckdb_state
declare function duckdb_append_timestamp(byval appender as duckdb_appender, byval value as duckdb_timestamp) as duckdb_state
declare function duckdb_append_interval(byval appender as duckdb_appender, byval value as duckdb_interval) as duckdb_state
Declare Function duckdb_append_varchar(ByVal appender As duckdb_appender, ByVal Val As Const ZString Ptr) As duckdb_state
declare function duckdb_append_varchar_length(byval appender as duckdb_appender, byval val as const zstring ptr, byval length as idx_t) as duckdb_state
declare function duckdb_append_blob(byval appender as duckdb_appender, byval data as const any ptr, byval length as idx_t) as duckdb_state
declare function duckdb_append_null(byval appender as duckdb_appender) as duckdb_state
declare function duckdb_append_value(byval appender as duckdb_appender, byval value as duckdb_value) as duckdb_state
declare function duckdb_append_data_chunk(byval appender as duckdb_appender, byval chunk as duckdb_data_chunk) as duckdb_state
declare function duckdb_table_description_create(byval connection as duckdb_connection, byval schema as const zstring ptr, byval table as const zstring ptr, byval out as duckdb_table_description ptr) as duckdb_state
declare function duckdb_table_description_create_ext(byval connection as duckdb_connection, byval catalog as const zstring ptr, byval schema as const zstring ptr, byval table as const zstring ptr, byval out as duckdb_table_description ptr) as duckdb_state
declare sub duckdb_table_description_destroy(byval table_description as duckdb_table_description ptr)
declare function duckdb_table_description_error(byval table_description as duckdb_table_description) as const zstring ptr
declare function duckdb_column_has_default(byval table_description as duckdb_table_description, byval index as idx_t, byval out as bool ptr) as duckdb_state
declare function duckdb_table_description_get_column_name(byval table_description as duckdb_table_description, byval index as idx_t) as zstring ptr
Declare Function duckdb_to_arrow_schema(ByVal arrow_options As duckdb_arrow_options, ByVal types As duckdb_logical_type Ptr, ByVal names As Const ZString Ptr Ptr, ByVal column_count As idx_t, ByVal out_schema As ArrowSchema Ptr) As duckdb_error_data
declare function duckdb_data_chunk_to_arrow(byval arrow_options as duckdb_arrow_options, byval chunk as duckdb_data_chunk, byval out_arrow_array as ArrowArray ptr) as duckdb_error_data
declare function duckdb_schema_from_arrow(byval connection as duckdb_connection, byval schema as ArrowSchema ptr, byval out_types as duckdb_arrow_converted_schema ptr) as duckdb_error_data
declare function duckdb_data_chunk_from_arrow(byval connection as duckdb_connection, byval arrow_array as ArrowArray ptr, byval converted_schema as duckdb_arrow_converted_schema, byval out_chunk as duckdb_data_chunk ptr) as duckdb_error_data
declare sub duckdb_destroy_arrow_converted_schema(byval arrow_converted_schema as duckdb_arrow_converted_schema ptr)
declare function duckdb_query_arrow(byval connection as duckdb_connection, byval query as const zstring ptr, byval out_result as duckdb_arrow ptr) as duckdb_state
declare function duckdb_query_arrow_schema(byval result as duckdb_arrow, byval out_schema as duckdb_arrow_schema ptr) as duckdb_state
declare function duckdb_prepared_arrow_schema(byval prepared as duckdb_prepared_statement, byval out_schema as duckdb_arrow_schema ptr) as duckdb_state
declare sub duckdb_result_arrow_array(byval result as duckdb_result, byval chunk as duckdb_data_chunk, byval out_array as duckdb_arrow_array ptr)
declare function duckdb_query_arrow_array(byval result as duckdb_arrow, byval out_array as duckdb_arrow_array ptr) as duckdb_state
Declare Function duckdb_arrow_column_count(ByVal result As duckdb_arrow) As idx_t
declare function duckdb_arrow_row_count(byval result as duckdb_arrow) as idx_t
declare function duckdb_arrow_rows_changed(byval result as duckdb_arrow) as idx_t
declare function duckdb_query_arrow_error(byval result as duckdb_arrow) as const zstring ptr
declare sub duckdb_destroy_arrow(byval result as duckdb_arrow ptr)
declare sub duckdb_destroy_arrow_stream(byval stream_p as duckdb_arrow_stream ptr)
declare function duckdb_execute_prepared_arrow(byval prepared_statement as duckdb_prepared_statement, byval out_result as duckdb_arrow ptr) as duckdb_state
declare function duckdb_arrow_scan(byval connection as duckdb_connection, byval table_name as const zstring ptr, byval arrow as duckdb_arrow_stream) as duckdb_state
declare function duckdb_arrow_array_scan(byval connection as duckdb_connection, byval table_name as const zstring ptr, byval arrow_schema as duckdb_arrow_schema, byval arrow_array as duckdb_arrow_array, byval out_stream as duckdb_arrow_stream ptr) as duckdb_state
declare sub duckdb_execute_tasks(byval database as duckdb_database, byval max_tasks as idx_t)
declare function duckdb_create_task_state(byval database as duckdb_database) as duckdb_task_state
declare sub duckdb_execute_tasks_state(byval state as duckdb_task_state)
declare function duckdb_execute_n_tasks_state(byval state as duckdb_task_state, byval max_tasks as idx_t) as idx_t
declare sub duckdb_finish_execution(byval state as duckdb_task_state)
declare function duckdb_task_state_is_finished(byval state as duckdb_task_state) as bool
declare sub duckdb_destroy_task_state(byval state as duckdb_task_state)
declare function duckdb_execution_is_finished(byval con as duckdb_connection) as bool
declare function duckdb_stream_fetch_chunk(byval result as duckdb_result) as duckdb_data_chunk
declare function duckdb_fetch_chunk(byval result as duckdb_result) as duckdb_data_chunk
declare function duckdb_create_cast_function() as duckdb_cast_function
declare sub duckdb_cast_function_set_source_type(byval cast_function as duckdb_cast_function, byval source_type as duckdb_logical_type)
declare sub duckdb_cast_function_set_target_type(byval cast_function as duckdb_cast_function, byval target_type as duckdb_logical_type)
declare sub duckdb_cast_function_set_implicit_cast_cost(byval cast_function as duckdb_cast_function, byval cost as longint)
declare sub duckdb_cast_function_set_function(byval cast_function as duckdb_cast_function, byval function as duckdb_cast_function_t)
declare sub duckdb_cast_function_set_extra_info(byval cast_function as duckdb_cast_function, byval extra_info as any ptr, byval destroy as duckdb_delete_callback_t)
declare function duckdb_cast_function_get_extra_info(byval info as duckdb_function_info) as any ptr
declare function duckdb_cast_function_get_cast_mode(byval info as duckdb_function_info) as duckdb_cast_mode
declare sub duckdb_cast_function_set_error(byval info as duckdb_function_info, byval error as const zstring ptr)
declare sub duckdb_cast_function_set_row_error(byval info as duckdb_function_info, byval error as const zstring ptr, byval row as idx_t, byval output as duckdb_vector)
declare function duckdb_register_cast_function(byval con as duckdb_connection, byval cast_function as duckdb_cast_function) as duckdb_state
declare sub duckdb_destroy_cast_function(byval cast_function as duckdb_cast_function ptr)
declare sub duckdb_destroy_expression(byval expr as duckdb_expression ptr)
declare function duckdb_expression_return_type(byval expr as duckdb_expression) as duckdb_logical_type
declare function duckdb_expression_is_foldable(byval expr as duckdb_expression) as bool
declare function duckdb_expression_fold(byval context as duckdb_client_context, byval expr as duckdb_expression, byval out_value as duckdb_value ptr) as duckdb_error_data

end extern
#endif