Vector4d={}
Vector4d.__index=Vector4d

--конструктор
function Vector4d.new(set_x,set_y,set_z,set_w)
  -- создаем пустую таблицу
  local vect1 = {}
  -- задаем , что эта таблица - вектор
  setmetatable(vect1,Vector4d) 
  -- ставим координаты
  vect1.x = set_x    
  vect1.y = set_y    
  vect1.z = set_z  
  vect1.w = set_w    
  return vect1
end