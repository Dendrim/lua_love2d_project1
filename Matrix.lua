
-- class Matrix3x3
Matrix3x3={{0,0,0},
           {0,0,0},
           {0,0,0}}
Matrix3x3.__index=Matrix3x3
--конструктор Matrix3x3
function Matrix3x3.new()
  -- создаем пустую таблицу
  local matrix_1 = {{0,0,0},{0,0,0},{0,0,0}}
  -- задаем , что эта таблица - матрица
  setmetatable(matrix_1,Matrix3x3) 
  -- ставим координаты
  return matrix_1
end


-- class Matrix4x4
Matrix4x4={{0,0,0,0},
           {0,0,0,0},
           {0,0,0,0},
           {0,0,0,0}}
Matrix4x4.__index=Matrix4x
--конструктор Matrix4x4
function Matrix4x4.new()
  -- создаем пустую таблицу
  local matrix_1 = {{0,0,0,0},
                    {0,0,0,0},
                    {0,0,0,0},
                    {0,0,0,0}}
  -- задаем , что эта таблица - матрица
  setmetatable(matrix_1,Matrix4x4) 
  -- ставим координаты
  return matrix_1
end

