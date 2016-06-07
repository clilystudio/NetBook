package com.ushaqi.zhuishushenqi.widget;

import android.app.Activity;
import android.content.Context;
import android.support.design.widget.am;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import com.ushaqi.zhuishushenqi.db.PostAgreeRecord;
import com.ushaqi.zhuishushenqi.model.Account;

public class PostAgreeView extends LinearLayout
  implements View.OnClickListener
{
  private String a;

  public PostAgreeView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public void onClick(View paramView)
  {
    Account localAccount = am.a((Activity)getContext());
    if ((this.a != null) && (localAccount != null))
    {
      setAgree(true);
      an localan = new an(this, 0);
      String[] arrayOfString = new String[2];
      arrayOfString[0] = this.a;
      arrayOfString[1] = localAccount.getToken();
      localan.b(arrayOfString);
    }
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    setOnClickListener(this);
  }

  public void setAgree(boolean paramBoolean)
  {
    View localView = findViewById(2131493841);
    if (paramBoolean)
    {
      setOnClickListener(null);
      localView.setEnabled(false);
      setBackgroundResource(2130837618);
      return;
    }
    setOnClickListener(this);
    localView.setEnabled(true);
    setBackgroundResource(2130837617);
  }

  public void setPostId(String paramString)
  {
    this.a = paramString;
    String str = this.a;
    Account localAccount = am.e();
    if ((localAccount != null) && (PostAgreeRecord.get(localAccount.getToken(), str) != null))
      setAgree(true);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.PostAgreeView
 * JD-Core Version:    0.6.0
 */