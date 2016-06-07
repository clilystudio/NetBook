package uk.me.lewisdeane.ldialogs;

 enum CustomDialog$LightColours
{
  private final String mColour;

  static
  {
    CONTENT = new LightColours("CONTENT", 1, "#544f49");
    BUTTON = new LightColours("BUTTON", 2, "#212121");
    LightColours[] arrayOfLightColours = new LightColours[3];
    arrayOfLightColours[0] = TITLE;
    arrayOfLightColours[1] = CONTENT;
    arrayOfLightColours[2] = BUTTON;
    a = arrayOfLightColours;
  }

  private CustomDialog$LightColours(String paramString)
  {
    this.mColour = paramString;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     uk.me.lewisdeane.ldialogs.CustomDialog.LightColours
 * JD-Core Version:    0.6.0
 */