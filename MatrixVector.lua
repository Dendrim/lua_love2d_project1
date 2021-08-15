require "Matrix"
require "Vectors"
require "Vectors4"

function Matrix_vector_3_application(Matrix3x3_1,Vector_1)
  result_x=Vector_1.x*Matrix3x3_1[1][1]+Vector_1.y*Matrix3x3_1[1][2]+Vector_1.z*Matrix3x3_1[1][3]
  result_y=Vector_1.x*Matrix3x3_1[2][1]+Vector_1.y*Matrix3x3_1[2][2]+Vector_1.z*Matrix3x3_1[2][3]
  result_z=Vector_1.x*Matrix3x3_1[3][1]+Vector_1.y*Matrix3x3_1[3][2]+Vector_1.z*Matrix3x3_1[3][3]
  return Vector.new(result_x,result_y,result_z)
end

