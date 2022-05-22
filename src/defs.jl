import Base: min, max, minimum, maximum, sum, count
import Statistics: mean

const JSparkConf = @jimport org.apache.spark.SparkConf
const JRuntimeConfig = @jimport org.apache.spark.sql.RuntimeConfig
const JSparkContext = @jimport org.apache.spark.SparkContext
const JJavaSparkContext = @jimport org.apache.spark.api.java.JavaSparkContext
const JRDD = @jimport org.apache.spark.rdd.RDD
const JJavaRDD = @jimport org.apache.spark.api.java.JavaRDD

const JSparkSession = @jimport org.apache.spark.sql.SparkSession
const JSparkSessionBuilder = @jimport org.apache.spark.sql.SparkSession$Builder
const JDataFrameReader = @jimport org.apache.spark.sql.DataFrameReader
const JDataFrameWriter = @jimport org.apache.spark.sql.DataFrameWriter
const JDataset = @jimport org.apache.spark.sql.Dataset
const JRelationalGroupedDataset = @jimport org.apache.spark.sql.RelationalGroupedDataset

# const JRowFactory = @jimport org.apache.spark.sql.RowFactory
const JGenericRow = @jimport org.apache.spark.sql.catalyst.expressions.GenericRow
const JGenericRowWithSchema = @jimport org.apache.spark.sql.catalyst.expressions.GenericRowWithSchema
const JRow = @jimport org.apache.spark.sql.Row
const JColumn = @jimport org.apache.spark.sql.Column
const JDataType = @jimport org.apache.spark.sql.types.DataType
const JMetadata = @jimport org.apache.spark.sql.types.Metadata
const JStructType = @jimport org.apache.spark.sql.types.StructType
const JStructField = @jimport org.apache.spark.sql.types.StructField
const JSQLFunctions = @jimport org.apache.spark.sql.functions
const JWindow = @jimport org.apache.spark.sql.expressions.Window
const JWindowSpec = @jimport org.apache.spark.sql.expressions.WindowSpec

const JInteger = @jimport java.lang.Integer
const JLong = @jimport java.lang.Long
const JFloat = @jimport java.lang.Float
const JDouble = @jimport java.lang.Double
const JBoolean = @jimport java.lang.Boolean

const JMap = @jimport java.util.Map
const JHashMap = @jimport java.util.HashMap
const JList = @jimport java.util.List
const JArrayList = @jimport java.util.ArrayList
# const JArrayBuffer = @jimport scala.collection.mutable.ArrayBuffer
const JWrappedArray = @jimport scala.collection.mutable.WrappedArray
const JSeq = @jimport scala.collection.Seq
# const JIMap = @jimport scala.collection.Map
# const JTuple2 = @jimport scala.Tuple2
# const JJavaConverters = @jimport scala.collection.JavaConverters



###############################################################################
#                                Type Definitions                             #
###############################################################################

struct SparkSessionBuilder
    jbuilder::JSparkSessionBuilder
end

struct SparkSession
    jspark::JSparkSession
end

struct RuntimeConfig
    jconf::JRuntimeConfig
end

struct DataFrame
    jdf::JDataset
end

# here we use PySpark's name, not the underlying Scala's name
struct GroupedData
    jgdf::JRelationalGroupedDataset
end

struct DataFrameReader
    jreader::JDataFrameReader
end

struct DataFrameWriter
    jwriter::JDataFrameWriter
end

struct Column
    jcol::JColumn
end

struct Row
    jrow::JRow
end

struct StructType
    jst::JStructType
end

struct StructField
    jsf::JStructField
end

struct Window
    jwindow::JWindow
end

struct WindowSpec
    jwindow::JWindowSpec
end