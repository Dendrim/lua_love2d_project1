
--не стоит зыбывать , что в движке увеличение оси "y"  идет вниз, потому и функции на вектора работают на эту ось зеркально 

-- class Vector
Vector={}
Vector.__index=Vector

--конструктор
function Vector.new(set_x,set_y,set_z)
  -- создаем пустую таблицу
  local vect1 = {}
  -- задаем , что эта таблица - вектор
  setmetatable(vect1,Vector) 
  -- ставим координаты
  vect1.x = set_x    
  vect1.y = set_y    
  vect1.z = set_z    
  return vect1
end
--операции с векторами 
-- '+' overload 
Vector.__add = function(vect1,vect2)
  return Vector.new((vect1.x+vect2.x),(vect1.y+vect2.y),(vect1.z+vect2.z))
end

function Vector:length()
  return (math.sqrt((self.x*self.x)+(self.y*self.y)+(self.z*self.z)))
end

--возвращает нормализованный вектор : вектор с длиной=1, но напрвленный так же 
function Vector:normalized()
  local length1=vec_length(self.x,self.y,self.z)
  new_x=(self.x)/length1
  new_y=(self.y)/length1
  new_z=(self.z)/length1
  return Vector.new(new_x,new_y,new_z)
end

--misc
function Vector:print1()
  print ("x:"..tostring(self.x))
  print ("y:"..tostring(self.y)) 
  print ("z:"..tostring(self.z))
  return 0
end

--конец класса Vector



-- операции с координатами векторов(в руби так было немного быстрее,нежели с самими векторами)
--причина разделения: создание нового объекта происходит медленнее, чем перезапись атрибутов уже существующего объекта
--ps: при движении объекта нам не надо запоминать его предыдущие координаты (), потому перезаписать атрибуты будет выгоднее по производительности

--сложение векторов , но в отличие от "+" не возвращает новые вектор , а изменяет vec1 
function vec_summ (vec1,vec2)
  vec1.x=vec1.x+vec2.x
  vec1.y=vec1.y+vec2.y
  vec1.z=vec1.z+vec2.z
end


--                     length types
function vec_length(x1,y1,z1)
  return math.sqrt(x1*x1+y1*y1+z1*z1)
end

function line_length(x1,y1,z1,x2,y2,z2)
  return math.sqrt((x1-x2)*(x1-x2)+(y1-y2)*(y1-y2)+(z1-z2)*(z1-z2))
end


--                    rotation types
--вокруг оси z 
function rotate_around_z(vec1,alpha)
  alpha=(alpha/180)*math.pi
  result_x=vec1.x
  result_y=vec1.y
  vec1.x = math.cos(alpha)*result_x-math.sin(alpha)*result_y
  vec1.y = math.sin(alpha)*result_x+math.cos(alpha)*result_y
end
--вокруг оси x 
function rotate_around_x(vec1,alpha)
  alpha=(alpha/180)*math.pi
  vec1.y = math.cos(alpha)*vec1.y-math.sin(alpha)*vec1.z
  vec1.z = math.sin(alpha)*vec1.y+math.cos(alpha)*vec1.z
end
--вокруг оси y 
function rotate_around_y(vec1,alpha)
  alpha=(alpha/180)*math.pi
  vec1.x = math.cos(alpha)*vec1.x+math.sin(alpha)*vec1.z
  vec1.y = -math.sin(alpha)*vec1.x+math.cos(alpha)*vec1.z
end


--                  orthogonal

function right_orthogonal(vec1)
  return Vector.new(vec1.y,-vec1.x,vec1.z)
end

function left_orthogonal(vec1)
  return Vector.new(-vec1.y,vec1.x,vec1.z)
end


--печатает любую таблицу 
function dump(o)
   if type(o) == 'table' then
      local s = '{ '
      for k,v in pairs(o) do
         if type(k) ~= 'number' then k = '"'..k..'"' end
         s = s .. '['..k..'] = ' .. dump(v) .. ','
      end
      return s .. '} '
   else
      return tostring(o)
   end
end

