package com.clilystudio.netbook.model;

import android.text.TextUtils;
import java.util.Date;

public class ShelfMsg
{
  public String _id;
  public Date end;
  public boolean highlight;
  public boolean login;
  public String postLink;
  public Date start;

  public boolean equals(Object paramObject)
  {
    if ((paramObject == null) || (!(paramObject instanceof ShelfMsg)))
      return false;
    ShelfMsg localShelfMsg = (ShelfMsg)paramObject;
    return TextUtils.equals(this._id, localShelfMsg._id);
  }

  public int hashCode()
  {
    if (this._id == null)
      return 0;
    return this._id.hashCode();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.model.ShelfMsg
 * JD-Core Version:    0.6.0
 */