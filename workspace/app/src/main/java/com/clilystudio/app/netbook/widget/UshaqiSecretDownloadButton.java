package com.clilystudio.app.netbook.widget;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.AttributeSet;
import com.arcsoft.hpay100.a.a;
import com.clilystudio.app.netbook.db.DownloadItem;
import com.clilystudio.app.netbook.model.AppItem;
import com.clilystudio.app.netbook.util.y;
import java.io.File;

public class UshaqiSecretDownloadButton extends AbsDownloadButton
{
  public UshaqiSecretDownloadButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  private void e()
  {
    if (a().getPackageName() != null)
      new DownloadItem(a().getPackageName()).save();
  }

  protected final void b()
  {
    e();
    new y((Activity)getContext(), a()).a();
  }

  protected final void c()
  {
    Intent localIntent = new Intent("android.intent.action.VIEW_DOWNLOADS");
    localIntent.setFlags(268435456);
    try
    {
      getContext().startActivity(localIntent);
      return;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
    }
  }

  protected final void d()
  {
    e();
    a.a(getContext(), new File(Uri.parse(a().getLocalFileUri()).getPath()));
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.UshaqiSecretDownloadButton
 * JD-Core Version:    0.6.2
 */