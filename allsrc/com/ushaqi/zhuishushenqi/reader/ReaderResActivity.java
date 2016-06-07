package com.ushaqi.zhuishushenqi.reader;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.LayoutInflater;
import android.view.View;
import com.squareup.a.b;
import com.squareup.a.l;
import com.ushaqi.zhuishushenqi.d;
import com.ushaqi.zhuishushenqi.event.i;
import com.ushaqi.zhuishushenqi.event.v;

public class ReaderResActivity extends ReaderModeActivity
{
  private View e;
  private int f;

  public static Intent a(Context paramContext, String paramString1, String paramString2, int paramInt)
  {
    return new d().a(paramContext, ReaderResActivity.class).a("BOOK_ID", paramString1).a("BOOK_TITLE", paramString2).a("BOOK_MODE", paramInt).a();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903179);
    c();
    View localView = LayoutInflater.from(this).inflate(2130903071, null);
    localView.findViewById(2131493860).setVisibility(8);
    localView.findViewById(2131493013).setOnClickListener(new bQ(this));
    localView.findViewById(2131493862).setOnClickListener(new bR(this));
    this.e = localView.findViewById(2131493864);
    localView.findViewById(2131493861).setOnClickListener(new bS(this));
    a().a(localView);
    a().d(true);
    i.a().a(this);
    f(this.c);
    FragmentTransaction localFragmentTransaction = getSupportFragmentManager().beginTransaction();
    if (this.a == 0)
    {
      localObject = (ReaderResourceFragment)getSupportFragmentManager().findFragmentByTag(ReaderResourceFragment.class.getName());
      if (localObject != null);
    }
    for (Object localObject = ReaderResourceFragment.a(this.b, this.c); ; localObject = a(this.c))
    {
      localFragmentTransaction.replace(2131493174, (Fragment)localObject).commit();
      com.ushaqi.zhuishushenqi.a.a();
      com.ushaqi.zhuishushenqi.a.a(this);
      bT localbT = new bT(this, 0);
      String[] arrayOfString = new String[1];
      arrayOfString[0] = this.b;
      localbT.b(arrayOfString);
      return;
    }
  }

  protected void onDestroy()
  {
    super.onDestroy();
    i.a().b(this);
  }

  @l
  public void onModeChanged(v paramv)
  {
    finish();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.ReaderResActivity
 * JD-Core Version:    0.6.0
 */