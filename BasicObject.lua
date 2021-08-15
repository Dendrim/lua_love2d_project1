require "Vectors"

-- class Vector
Basic_object={}
Basic_object.__index=Basic_object

--конструктор
function Basic_object.new(pos_vec,face_vec,velocity_vec,picture)
  local object_created = {}
  setmetatable(object_created,Basic_object) 
  
  object_created.position = pos_vec
  object_created.facing_direction = face_vec
  object_created.velocity = velocity_vec
  object_created.picture = picture
  


  return object_created
end