package uk.me.lewisdeane.ldialogs;

 enum CustomDialog$DarkColours
{
  private final String mColour;

  static
  {
    CONTENT = new DarkColours("CONTENT", 1, "#808080");
    BUTTON = new DarkColours("BUTTON", 2, "#CCCCCC");
    DarkColours[] arrayOfDarkColours = new DarkColours[3];
    arrayOfDarkColours[0] = TITLE;
    arrayOfDarkColours[1] = CONTENT;
    arrayOfDarkColours[2] = BUTTON;
    a = arrayOfDarkColours;
  }

  private CustomDialog$DarkColours(String paramString)
  {
    this.mColour = paramString;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     uk.me.lewisdeane.ldialogs.CustomDialog.DarkColours
 * JD-Core Version:    0.6.0
 */