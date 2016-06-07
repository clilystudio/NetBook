package com.clilystudio.netbook.reader;

import android.os.Bundle;
import android.support.design.widget.am;
import android.support.v4.app.Fragment;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.squareup.a.b;
import com.squareup.a.l;
import com.clilystudio.netbook.event.B;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.model.Advert;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.util.a;
import com.clilystudio.netbook.util.adutil.BaseShelfAd;
import com.clilystudio.netbook.widget.LoadingContainer;

public class ReaderMenuFragment extends Fragment
{
  private String a;
  private String b;
  private String c;
  private String d;
  private String e;
  private String f;
  private LoadingContainer g;
  private String h;
  private BaseShelfAd i;
  private View.OnClickListener j = new bs(this);
  private View.OnClickListener k = new bt(this);

  public static ReaderMenuFragment a(String paramString1, String paramString2)
  {
    ReaderMenuFragment localReaderMenuFragment = new ReaderMenuFragment();
    Bundle localBundle = new Bundle();
    localBundle.putString("BOOK_ID", paramString1);
    localBundle.putString("BOOK_TITLE", paramString2);
    localReaderMenuFragment.setArguments(localBundle);
    return localReaderMenuFragment;
  }

  private boolean c()
  {
    return !TextUtils.isEmpty(this.h);
  }

  public final String a()
  {
    return this.d;
  }

  public final String b()
  {
    return this.b;
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    this.e = getArguments().getString("BOOK_ID");
    this.f = getArguments().getString("BOOK_TITLE");
    int m = am.k(getActivity());
    if ((getView() != null) && (m != 0))
      getView().findViewById(2131493457).setPadding(0, m, 1, 0);
    bA localbA = new bA(this, 0);
    String[] arrayOfString = new String[1];
    arrayOfString[0] = this.e;
    localbA.b(arrayOfString);
    if (am.q(getActivity()))
      new bz(this, 0).b(new Void[0]);
    do
      return;
    while (getView() == null);
    getView().findViewById(2131492933).setVisibility(8);
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(2130903216, paramViewGroup, false);
    ((RelativeLayout)localView.findViewById(2131493446)).setPadding(0, am.k(getActivity()), 0, 0);
    localView.findViewById(2131493452).setOnClickListener(this.j);
    this.g = ((LoadingContainer)localView.findViewById(2131493460));
    localView.findViewById(2131493455).setOnClickListener(this.j);
    i.a().a(this);
    return localView;
  }

  public void onPause()
  {
    super.onPause();
    a.a().c();
  }

  @l
  public void onShowThirdAd(B paramB)
  {
    if ((getView() == null) || (paramB == null) || (!am.q(getActivity())) || (!paramB.b().equals("top")));
    View localView;
    while (true)
    {
      return;
      localView = getView().findViewById(2131492933);
      if (localView == null)
        continue;
      Advert localAdvert = paramB.a();
      if ((localAdvert == null) || (!(localAdvert instanceof BaseShelfAd)))
        break;
      this.i = ((BaseShelfAd)localAdvert);
      localView.setVisibility(0);
      localView.setOnClickListener(this.k);
      localView.findViewById(2131492916).setOnClickListener(this.k);
      if ((localAdvert == null) || (getView() == null))
        continue;
      SmartImageView localSmartImageView = (SmartImageView)getView().findViewById(2131493448);
      TextView localTextView1 = (TextView)getView().findViewById(2131493449);
      TextView localTextView2 = (TextView)getView().findViewById(2131493450);
      localSmartImageView.setDrawingCacheEnabled(true);
      localSmartImageView.setImageUrl(localAdvert.getImg());
      TextView localTextView3 = (TextView)getView().findViewById(2131492916);
      if (localAdvert.isApk());
      for (String str = "安装"; ; str = "查看")
      {
        localTextView3.setText(str);
        localTextView1.setText(localAdvert.getTitle());
        localTextView2.setText(localAdvert.getDesc());
        return;
      }
    }
    localView.setVisibility(4);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.ReaderMenuFragment
 * JD-Core Version:    0.6.0
 */