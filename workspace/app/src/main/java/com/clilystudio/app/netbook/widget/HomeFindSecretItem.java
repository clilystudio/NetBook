package com.clilystudio.app.netbook.widget;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import com.clilystudio.app.netbook.am_CommonUtils;
import android.util.AttributeSet;

import com.umeng.a.b;
import com.clilystudio.app.netbook.MyApplication;
import com.clilystudio.app.netbook.ui.MysteryActivity;
import com.clilystudio.app.netbook.util.t;
import java.util.Calendar;
import java.util.Date;

public class HomeFindSecretItem extends HomeFindItem
{
  private ProgressDialog a;

  public HomeFindSecretItem(Activity paramActivity)
  {
    super(paramActivity, "神秘功能", 2130837831, 2130837826, null);
  }

  public HomeFindSecretItem(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  private boolean b()
  {
    int k;
    if (!com.arcsoft.hpay100.a.a.a(getContext(), "KEY_SECRET_UNLOCKED", false))
    {
      Context localContext = getContext();
      String str1 = am_CommonUtils.n(localContext);
      String str2 = b.b(localContext, "switch_secret_to_random");
      if ((str2 == null) || (str2.length() <= 0))
        break label100;
      String[] arrayOfString = str2.split(",");
      int j = arrayOfString.length;
      k = 0;
      if (k >= j)
        break label100;
      if (!arrayOfString[k].equals(str1))
        break label94;
    }
    label94: label100: for (int i = 1; ; i = 0)
    {
      boolean bool = false;
      if (i != 0)
        bool = true;
      return bool;
      k++;
      break;
    }
  }

  public final void a()
  {
    int i = 1;
    if (b());
    while (true)
    {
      if (i != 0)
      {
        setVisibility(0);
        if (b())
          this.mIcon.setImageResource(2130837832);
        while (true)
        {
          if (!b())
            break label217;
          this.mTitle.setText("随机看书");
          this.mSubFlag.setVisibility(4);
          return;
          Context localContext = getContext();
          String str1 = b.b(localContext, "mystery_disabled_at_version");
          String str2 = b.b(localContext, "mystery_enable_time");
          String str3 = b.b(localContext, "mystery_enable_minute_range");
          int j = com.arcsoft.hpay100.a.a.b(str1, 0);
          int k = com.arcsoft.hpay100.a.a.b(str3, 0);
          if ((j == am_CommonUtils.f_getVersionCode(localContext)) || ("".equals(str2)) || ("0".equals(str2)))
            break label242;
          Date localDate1 = t.a(str2);
          Calendar localCalendar = Calendar.getInstance();
          localCalendar.setTime(localDate1);
          localCalendar.add(12, k);
          Date localDate2 = localCalendar.getTime();
          long l = new Date().getTime();
          if ((l > localDate1.getTime()) && (l < localDate2.getTime()))
            break;
          i = 0;
          break;
          this.mIcon.setImageResource(2130837831);
        }
        label217: this.mTitle.setText("神秘功能");
        this.mSubFlag.setVisibility(0);
        return;
      }
      setVisibility(8);
      return;
      label242: i = 0;
    }
  }

  protected final void a(Context paramContext, String paramString)
  {
    boolean bool = b();
    if (bool)
    {
      this.a = ProgressDialog.show(paramContext, null, paramContext.getString(2131034218), true, true);
      com.a.a.a.a(MyApplication.a_getInstance(), "rec_F184E6D9_7F75_01C9_CCA0_2336AEB54B2B", com.arcsoft.hpay100.a.a.o(getContext()), new aa(this, paramContext));
    }
    while (bool)
    {
      b.a(paramContext, "home_find_mystery_click", "unlock");
      return;
      paramContext.startActivity(new Intent(paramContext, MysteryActivity.class));
    }
    b.a(paramContext, "home_find_mystery_click", "lock");
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.HomeFindSecretItem
 * JD-Core Version:    0.6.2
 */