package com.activeandroid.query;

 enum Join$JoinType
{
  static
  {
    INNER = new JoinType("INNER", 2);
    CROSS = new JoinType("CROSS", 3);
    JoinType[] arrayOfJoinType = new JoinType[4];
    arrayOfJoinType[0] = LEFT;
    arrayOfJoinType[1] = OUTER;
    arrayOfJoinType[2] = INNER;
    arrayOfJoinType[3] = CROSS;
    $VALUES = arrayOfJoinType;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.activeandroid.query.Join.JoinType
 * JD-Core Version:    0.6.0
 */