package com.cocosw.bottomsheet;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.text.TextUtils;
import android.view.View;
import java.util.ArrayList;

public final class g
{
  private final Context a;
  private int b;
  private final ArrayList<h> c = new ArrayList();
  private boolean d;
  private DialogInterface.OnClickListener e;
  private View f;

  public g(Activity paramActivity)
  {
    this(paramActivity, R.style.BottomSheet_Dialog);
    Resources.Theme localTheme = paramActivity.getTheme();
    int[] arrayOfInt = new int[1];
    arrayOfInt[0] = R.attr.bottomSheetStyle;
    TypedArray localTypedArray = localTheme.obtainStyledAttributes(arrayOfInt);
    while (true)
    {
      try
      {
        this.b = localTypedArray.getResourceId(0, R.style.BottomSheet_Dialog);
        localTypedArray.recycle();
        bool = false;
        if (paramActivity == null)
        {
          if (!bool)
            continue;
          this.b = R.style.BottomSheet_Dialog_Dark;
          return;
        }
      }
      finally
      {
        localTypedArray.recycle();
      }
      boolean bool = paramActivity.getSharedPreferences(paramActivity.getPackageName() + "_preferences", 0).getBoolean("customer_night_theme", false);
    }
  }

  private g(Context paramContext, int paramInt)
  {
    this.a = paramContext;
    this.b = paramInt;
  }

  public final g a()
  {
    this.d = true;
    return this;
  }

  public final g a(int paramInt)
  {
    try
    {
      XmlResourceParser localXmlResourceParser = this.a.getResources().getXml(paramInt);
      localXmlResourceParser.next();
      int i = localXmlResourceParser.getEventType();
      if (i != 1)
      {
        String str1;
        Object localObject;
        if (i == 2)
        {
          str1 = localXmlResourceParser.getName();
          if (!str1.equals("item"))
            break label236;
          localObject = localXmlResourceParser.getAttributeValue("http://schemas.android.com/apk/res/android", "title");
          String str2 = localXmlResourceParser.getAttributeValue("http://schemas.android.com/apk/res/android", "icon");
          String str3 = localXmlResourceParser.getAttributeValue("http://schemas.android.com/apk/res/android", "id");
          h localh2 = new h(0);
          h.a(localh2, Integer.valueOf(str3.replace("@", "")).intValue());
          if (((String)localObject).contains("@"))
            break label202;
          label134: h.a(localh2, (CharSequence)localObject);
          if (!TextUtils.isEmpty(str2))
            h.a(localh2, this.a.getResources().getDrawable(Integer.valueOf(str2.replace("@", "")).intValue()));
          this.c.add(localh2);
        }
        while (true)
        {
          i = localXmlResourceParser.next();
          break;
          label202: String str4 = ((String)localObject).replace("@", "");
          localObject = this.a.getResources().getText(Integer.valueOf(str4).intValue());
          break label134;
          label236: if (!str1.equals("divider"))
            continue;
          h localh1 = new h(0);
          localh1.a = true;
          this.c.add(localh1);
        }
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return (g)this;
  }

  public final g a(int paramInt1, int paramInt2, int paramInt3)
  {
    h localh = new h(paramInt1, this.a.getText(paramInt3), this.a.getResources().getDrawable(paramInt2), 0);
    this.c.add(localh);
    return this;
  }

  public final g a(DialogInterface.OnClickListener paramOnClickListener)
  {
    this.e = paramOnClickListener;
    return this;
  }

  @SuppressLint({"Override"})
  public final a b()
  {
    a locala = new a(this.a, this.b);
    a.a(locala, this);
    return locala;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.cocosw.bottomsheet.g
 * JD-Core Version:    0.6.0
 */