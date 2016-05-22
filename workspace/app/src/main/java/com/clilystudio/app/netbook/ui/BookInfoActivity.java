package com.clilystudio.app.netbook.ui;

import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import com.clilystudio.app.netbook.am_CommonUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import com.squareup.a.l;
import com.clilystudio.app.netbook.MyApplication;
import com.clilystudio.app.netbook.db.BookReadRecord;
import com.clilystudio.app.netbook.event.B;
import com.clilystudio.app.netbook.event.c;
import com.clilystudio.app.netbook.event.i;
import com.clilystudio.app.netbook.event.s;
import com.clilystudio.app.netbook.model.Advert;
import com.clilystudio.app.netbook.model.BookInfo;
import com.clilystudio.app.netbook.ui.post.BookPostTabActivity;
import com.clilystudio.app.netbook.util.adutil.n;
import com.clilystudio.app.netbook.util.e;
import com.clilystudio.app.netbook.util.m;
import com.clilystudio.app.netbook.widget.TagsLayout;

public class BookInfoActivity extends BaseActivity
  implements View.OnClickListener
{
  private static final String a = BookInfoActivity.class.getSimpleName();
  private View b;
  private View c;
  private View e;
  private View f;
  private View g;
  private String h;
  private boolean i;
  private boolean j;
  private BookInfo k;
  private int l = 0;
  private Handler m = new aB(this);

  public static Intent a(Context paramContext, String paramString)
  {
    return new com.clilystudio.app.netbook.d().a(paramContext, BookInfoActivity.class).a("book_id", paramString).a("open_type", 0).a();
  }

  public static Intent a(Context paramContext, String paramString, int paramInt)
  {
    return new com.clilystudio.app.netbook.d().a(paramContext, BookInfoActivity.class).a("book_id", paramString).a("open_type", paramInt).a();
  }

  private void a(int paramInt)
  {
    View localView = a().a();
    TextView localTextView = null;
    if (localView != null)
      localTextView = (TextView)localView.findViewById(2131493008);
    if (localTextView == null)
      return;
    switch (paramInt)
    {
    default:
      return;
    case 0:
    case 3:
    case 4:
      localTextView.setEnabled(true);
      localTextView.setText(2131034329);
      localTextView.setTextColor(getResources().getColor(2131427552));
      return;
    case 2:
      localTextView.setEnabled(false);
      localTextView.setText("缓存中...");
      localTextView.setTextColor(getResources().getColor(2131427364));
      return;
    case 1:
    case 5:
    }
    localTextView.setEnabled(false);
    localTextView.setText("等待中...");
    localTextView.setTextColor(getResources().getColor(2131427364));
  }

  private void a(View paramView, Advert paramAdvert)
  {
    if ((paramView == null) || (paramAdvert == null))
      return;
    paramAdvert.setPosition("book_info");
    paramAdvert.recordShow(this);
    SmartImageView localSmartImageView = (SmartImageView)paramView.findViewById(2131493312);
    TextView localTextView1 = (TextView)paramView.findViewById(2131493314);
    TextView localTextView2 = (TextView)paramView.findViewById(2131493315);
    paramView.findViewById(2131493313).setVisibility(0);
    localSmartImageView.setImageUrl(paramAdvert.getFullImg());
    localTextView1.setText(paramAdvert.getTitle());
    localTextView2.setText(paramAdvert.getDesc());
    paramView.setOnClickListener(new aE(this, paramAdvert));
    n.a(paramAdvert, paramView);
  }

  private void a(boolean paramBoolean)
  {
    View localView1 = findViewById(2131493077);
    TextView localTextView = (TextView)findViewById(2131493323);
    View localView2 = this.g;
    int n;
    int i1;
    if (paramBoolean)
    {
      n = 2130837711;
      localView2.setBackgroundResource(n);
      if (!paramBoolean)
        break label83;
      i1 = 2131034332;
      label50: localTextView.setText(i1);
      if (!paramBoolean)
        break label91;
    }
    label83: label91: for (int i2 = 8; ; i2 = 0)
    {
      localView1.setVisibility(i2);
      return;
      n = am_CommonUtils.b(this, 2130771971);
      break;
      i1 = 2131034331;
      break label50;
    }
  }

  private void a(String[] paramArrayOfString)
  {
    if ((paramArrayOfString == null) || (paramArrayOfString.length == 0))
      return;
    LayoutInflater localLayoutInflater = LayoutInflater.from(this);
    View localView = findViewById(2131493334);
    localView.setVisibility(0);
    int n = paramArrayOfString.length;
    int i1 = com.arcsoft.hpay100.a.a.a(this, 16.0F);
    TagsLayout localTagsLayout = (TagsLayout)localView.findViewById(2131493335);
    if (com.arcsoft.hpay100.a.a.a(this, "customer_night_theme", false));
    for (int[] arrayOfInt = { 2130837623, 2130837625, 2130837627, 2130837629, 2130837631, 2130837633, 2130837635 }; ; arrayOfInt = new int[] { 2130837622, 2130837624, 2130837626, 2130837628, 2130837630, 2130837632, 2130837634 })
    {
      int i2 = 0;
      int i4;
      for (int i3 = 0; i3 < n; i3 = i4)
      {
        TextView localTextView = (TextView)localLayoutInflater.inflate(2130903160, localTagsLayout, false).findViewById(2131493337);
        String str = paramArrayOfString[i3];
        localTextView.setText(str);
        if (i2 >= 7)
          i2 = 0;
        localTextView.setBackgroundResource(arrayOfInt[i2]);
        localTextView.setOnClickListener(new aF(this, str));
        localTagsLayout.addView(localTextView, new ViewGroup.LayoutParams(i1, i1));
        i4 = i3 + 1;
        i2++;
      }
      break;
    }
  }

  private void e(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return;
    case 1:
      this.b.setVisibility(0);
      this.c.setVisibility(8);
      this.e.setVisibility(8);
      return;
    case 0:
      this.b.setVisibility(8);
      this.c.setVisibility(0);
      this.e.setVisibility(8);
      return;
    case 2:
    }
    this.b.setVisibility(8);
    this.c.setVisibility(8);
    this.e.setVisibility(0);
  }

  private void f()
  {
    View localView = findViewById(2131493311);
    if ((am_CommonUtils.q(this)) && (com.arcsoft.hpay100.a.a.F(this)))
    {
      Advert localAdvert = n.b(this, "book");
      if ((localAdvert != null) && (com.arcsoft.hpay100.a.a.w(this, "rate_zssq_advert_reader_bookinfo")))
      {
        localView.setVisibility(0);
        a(localView, localAdvert);
        return;
      }
      localView.setVisibility(8);
      return;
    }
    localView.setVisibility(8);
  }

  private void g()
  {
    int n = this.f.getPaddingLeft();
    int i1 = this.f.getPaddingTop();
    int i2 = this.f.getPaddingRight();
    int i3 = this.f.getPaddingBottom();
    View localView = this.f;
    int i4;
    ImageView localImageView;
    String str;
    if (this.i)
    {
      i4 = 2130837711;
      localView.setBackgroundResource(i4);
      this.f.setPadding(n, i1, i2, i3);
      TextView localTextView = (TextView)findViewById(2131493288);
      localImageView = (ImageView)findViewById(2131493287);
      if (!this.i)
        break label149;
      str = getString(2131034330);
      label110: localTextView.setText(str);
      if (!this.i)
        break label161;
    }
    label149: label161: for (int i5 = 2130837714; ; i5 = 2130837710)
    {
      localImageView.setImageResource(i5);
      return;
      i4 = am_CommonUtils.b(this, 2130771971);
      break;
      str = getString(2131034328);
      break label110;
    }
  }

  private void h()
  {
    if (this.i)
    {
      BookReadRecord.deleteAndSync(this.h);
      com.arcsoft.hpay100.a.a.v(this.h);
      String str3 = getString(2131034467);
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = this.k.getTitle();
      localObject = String.format(str3, arrayOfObject2);
      e.a(this, (String)localObject);
      return;
    }
    if (am_CommonUtils.f());
    String str2;
    for (Object localObject = getString(2131034325); ; localObject = str2)
    {
      com.umeng.a.b.a(this, "book_info_add");
      i();
      break;
      BookReadRecord.create(this.k);
      com.arcsoft.hpay100.a.a.u(this.h);
      String str1 = getString(2131034283);
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = this.k.getTitle();
      str2 = String.format(str1, arrayOfObject1);
      if ((com.arcsoft.hpay100.a.a.a(this, "add_update_notify_login", true)) && (!am_CommonUtils.g()))
      {
        View localView = getLayoutInflater().inflate(2130903380, null, false);
        CheckBox localCheckBox = (CheckBox)localView.findViewById(2131493973);
        localCheckBox.setText(getString(2131034301));
        localCheckBox.setChecked(false);
        ((TextView)localView.findViewById(2131493972)).setText(getString(2131034302));
        new uk.me.lewisdeane.ldialogs.h(this).a(localView).a("快速登录", new aH(this, localCheckBox)).b("不想同步", new aG(this, localCheckBox)).a().show();
      }
    }
  }

  private void i()
  {
    switch (this.l)
    {
    default:
      return;
    case 1:
      com.umeng.a.b.a(this, "book_info_recommend_add_shelf", "zhuishu");
      return;
    case 2:
      com.umeng.a.b.a(this, "page_footing_recommend_add_shelf", "zhuishu");
      return;
    case 3:
      com.umeng.a.b.a(this, "book_info_recommend_add_shelf", "bfd");
      return;
    case 4:
    }
    com.umeng.a.b.a(this, "page_footing_recommend_add_shelf", "bfd");
  }

  private void j()
  {
    e(0);
    aI localaI = new aI(this, (byte)0);
    String[] arrayOfString = new String[1];
    arrayOfString[0] = this.h;
    localaI.b(arrayOfString);
  }

  private void k()
  {
    if (this.k != null)
      MyApplication.a().a(this.k);
  }

  @l
  public void onBookAdded(c paramc)
  {
    if ((paramc.b().equals(this.h)) && (!this.i))
    {
      this.m.sendEmptyMessage(0);
      i();
    }
  }

  @l
  public void onBookRemoved(com.clilystudio.app.netbook.event.h paramh)
  {
    if ((paramh.b().equals(this.h)) && (this.i))
    {
      this.i = false;
      g();
    }
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
      return;
    case 2131493321:
      h();
      return;
    case 2131493322:
      BookReadRecord localBookReadRecord = BookReadRecord.get(this.h);
      if (localBookReadRecord == null)
      {
        a(true);
        new m(this).a(this.k);
      }
      while (true)
      {
        com.umeng.a.b.a(this, "book_info_search");
        return;
        new m(this).a(localBookReadRecord);
      }
    case 2131493329:
      startActivity(BookPostTabActivity.a(this, this.h, this.k.getTitle()));
      com.umeng.a.b.a(this, "book_info_post");
      return;
    case 2131493284:
      startActivity(AuthorBooksActivity.a(this, this.k.getAuthor()));
      return;
    case 2131493138:
    }
    j();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903087);
    ay localay = new ay(this);
    c();
    View localView = LayoutInflater.from(this).inflate(2130903041, null);
    ((TextView)localView.findViewById(2131492936)).setText(2131034333);
    localView.findViewById(2131493013).setOnClickListener(new U(this));
    TextView localTextView1 = (TextView)localView.findViewById(2131493010);
    TextView localTextView2 = (TextView)localView.findViewById(2131493011);
    localTextView1.setText(2131034329);
    localTextView2.setText(2131034175);
    localTextView1.setOnClickListener(new V(this, localay));
    localTextView2.setOnClickListener(new W(this, localay));
    a().a(localView);
    this.b = findViewById(2131492905);
    this.c = findViewById(2131493085);
    this.e = findViewById(2131493086);
    this.g = findViewById(2131493322);
    this.f = findViewById(2131493321);
    this.g.setOnClickListener(this);
    this.f.setOnClickListener(this);
    this.e.setOnClickListener(this);
    this.h = getIntent().getStringExtra("book_id");
    if (BookReadRecord.getOnShelf(this.h) != null);
    for (boolean bool = true; ; bool = false)
    {
      this.i = bool;
      i.a().a(this);
      j();
      com.umeng.a.b.a(this, "book_info_open");
      this.l = getIntent().getIntExtra("open_type", 0);
      return;
    }
  }

  protected void onDestroy()
  {
    super.onDestroy();
    i.a().b(this);
  }

  @l
  public void onDownloadStatus(com.clilystudio.app.netbook.event.d paramd)
  {
    if (this.h.equals(paramd.b()))
      a(paramd.a());
  }

  @l
  public void onHideAdEvent(s params)
  {
    f();
  }

  public void onResume()
  {
    super.onResume();
    k();
    a(false);
    a(am_CommonUtils.g(this.h));
  }

  @l
  public void onShowThirdAd(B paramB)
  {
    if ((paramB == null) || (!am_CommonUtils.q(this)) || (!paramB.b().equals("book")));
    Advert localAdvert;
    do
    {
      return;
      localAdvert = paramB.a();
    }
    while (localAdvert == null);
    View localView = findViewById(2131493311);
    localView.setVisibility(0);
    a(localView, localAdvert);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.BookInfoActivity
 * JD-Core Version:    0.6.2
 */