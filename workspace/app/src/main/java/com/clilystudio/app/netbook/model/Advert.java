package com.clilystudio.app.netbook.model;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.clilystudio.app.netbook.api.ApiService;
import java.io.Serializable;
import java.util.Arrays;
import java.util.List;

public abstract class Advert
  implements Serializable
{
  private static final long serialVersionUID = 5914392892334299329L;
  private AdvertData data;
  private String position;
  private boolean read;
  private String type;

  public boolean canShowAtPosition(String paramString)
  {
    if ((this.data == null) || (this.data.getShowAt() == null))
      return false;
    return Arrays.asList(this.data.getShowAt()).contains(paramString);
  }

  public boolean equals(Object paramObject)
  {
    if ((paramObject == null) || (!(paramObject instanceof Advert)))
      return false;
    Advert localAdvert = (Advert)paramObject;
    return TextUtils.equals(this.data.get_id(), localAdvert.get_id());
  }

  public int getApkSize()
  {
    return this.data.getApkSize();
  }

  public String getDesc()
  {
    return this.data.getDesc();
  }

  public int getFlagType()
  {
    if (isRead());
    do
    {
      return 0;
      if ("promotion".equals(getType()))
        return 1;
    }
    while (!"notice".equals(getType()));
    return 2;
  }

  public String getFullImg()
  {
    return ApiService.a + this.data.getImg();
  }

  public String getImg()
  {
    return this.data.getImg();
  }

  public String getInsideLink()
  {
    return this.data.getInsideLink();
  }

  public String getPosition()
  {
    return this.position;
  }

  public int getPriority()
  {
    return this.data.getPriority();
  }

  public String getTitle()
  {
    return this.data.getTitle();
  }

  public String getType()
  {
    return this.type;
  }

  public String getUrl()
  {
    return this.data.getUrl();
  }

  public String get_id()
  {
    return this.data.get_id();
  }

  public int hashCode()
  {
    if (this.data.get_id() == null)
      return 0;
    return this.data.get_id().hashCode();
  }

  public boolean isApk()
  {
    return this.data.isApk();
  }

  public boolean isRead()
  {
    return this.read;
  }

  public abstract void processClick(View paramView);

  public abstract void recordClick(View paramView);

  public abstract void recordShow(Context paramContext);

  public void setData(AdvertData paramAdvertData)
  {
    this.data = paramAdvertData;
  }

  public void setPosition(String paramString)
  {
    this.position = paramString;
  }

  public void setRead(boolean paramBoolean)
  {
    this.read = paramBoolean;
  }

  public void setType(String paramString)
  {
    this.type = paramString;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.Advert
 * JD-Core Version:    0.6.2
 */