package com.clilystudio.app.netbook.util;

public enum UmengGameTracer$From
{
  private String mPre;

  static
  {
    Bookshelf = new From("Bookshelf", 1, "bookshelf");
    Reader = new From("Reader", 2, "reader_menu");
    Notification = new From("Notification", 3, "notification");
    From[] arrayOfFrom = new From[4];
    arrayOfFrom[0] = Splash;
    arrayOfFrom[1] = Bookshelf;
    arrayOfFrom[2] = Reader;
    arrayOfFrom[3] = Notification;
  }

  private UmengGameTracer$From(String paramString)
  {
    this.mPre = ("new_game_ad_" + paramString);
  }

  public final String build()
  {
    return this.mPre + "_";
  }

  public final String getPre()
  {
    return this.mPre;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.util.UmengGameTracer.From
 * JD-Core Version:    0.6.2
 */