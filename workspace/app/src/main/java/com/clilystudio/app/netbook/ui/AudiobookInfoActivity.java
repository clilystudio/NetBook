package com.clilystudio.app.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import com.clilystudio.app.netbook.am_CommonUtils;
import android.view.MenuInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.koushikdutta.async.http.a;
import com.squareup.a.b;
import com.clilystudio.app.netbook.d;
import com.clilystudio.app.netbook.db.AudioRecord;
import com.clilystudio.app.netbook.event.i;
import com.clilystudio.app.netbook.event.p;
import com.clilystudio.app.netbook.model.AlbumSerialized;
import com.clilystudio.app.netbook.util.as;
import com.clilystudio.app.netbook.widget.LinearListView;
import com.clilystudio.app.netbook.widget.ad;
import com.ximalaya.ting.android.opensdk.datatrasfer.CommonRequest;
import com.ximalaya.ting.android.opensdk.httputil.XimalayaException;
import com.ximalaya.ting.android.opensdk.player.service.IXmPlayerStatusListener;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class AudiobookInfoActivity extends BaseActivity
  implements View.OnClickListener, ad
{
  private View a;
  private View b;
  private View c;
  private TextView e;
  private TextView f;
  private ImageView g;
  private ImageView h;
  private RelativeLayout i;
  private RelativeLayout j;
  private LinearListView k;
  private boolean l;
  private boolean m = true;
  private boolean n = false;
  private boolean o = false;
  private boolean p = false;
  private AlbumSerialized q;
  private as r;
  private CommonRequest s;
  private int t = 0;
  private int u = 100;
  private int v;
  private int w = 1;
  private int x = 1;
  private boolean y = true;
  private IXmPlayerStatusListener z = new F(this);

  public static Intent a(Context paramContext, long paramLong)
  {
    return new d().a(paramContext, AudiobookInfoActivity.class).a("ALBUM_ID", Long.valueOf(paramLong)).a();
  }

  private void a(int paramInt)
  {
    this.t = (paramInt / this.u * this.u);
    if (this.t + this.u > this.k.a().size());
    for (int i1 = this.k.a().size(); ; i1 = this.t + this.u)
    {
      this.r.a(this.k.a().subList(this.t, i1), paramInt - this.t);
      return;
    }
  }

  private void a(View paramView)
  {
    a locala = new a(this, paramView);
    locala.b().inflate(2131558402, locala.a());
    locala.a(new E(this));
    locala.c();
  }

  private void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.i.setBackgroundResource(2130837748);
      this.f.setText(getResources().getString(2131034310));
      this.f.setTextColor(getResources().getColor(2131427522));
      this.g.setImageResource(2130837919);
      return;
    }
    this.i.setBackgroundResource(am_CommonUtils.b(this, 2130771971));
    this.f.setText(getResources().getString(2131034313));
    this.f.setTextColor(-1);
    this.g.setImageResource(2130837588);
  }

  private void b()
  {
    long l1 = getIntent().getLongExtra("ALBUM_ID", 0L);
    HashMap localHashMap = new HashMap();
    localHashMap.put("ids", l1);
    CommonRequest.getBatch(localHashMap, new C(this));
  }

  private AudioRecord f()
  {
    AudioRecord localAudioRecord = new AudioRecord();
    localAudioRecord.setBookId(String.valueOf(this.q.getId()));
    localAudioRecord.setName(this.q.getTitle());
    localAudioRecord.setDesc(this.q.getLastTrackTitle());
    localAudioRecord.setImgUrl(this.q.getUrl());
    if (this.m)
      localAudioRecord.setTrack(this.x);
    while (true)
    {
      localAudioRecord.setLastUpdate(this.q.getUpdateAt());
      return localAudioRecord;
      localAudioRecord.setTrack(1 + (this.v - this.x));
    }
  }

  private void g()
  {
    int i1 = this.j.getPaddingLeft();
    int i2 = this.j.getPaddingTop();
    int i3 = this.j.getPaddingRight();
    int i4 = this.j.getPaddingBottom();
    RelativeLayout localRelativeLayout = this.j;
    int i5;
    ImageView localImageView;
    String str;
    if (this.o)
    {
      i5 = 2130837711;
      localRelativeLayout.setBackgroundResource(i5);
      this.j.setPadding(i1, i2, i3, i4);
      TextView localTextView = (TextView)findViewById(2131493288);
      localImageView = (ImageView)findViewById(2131493287);
      if (!this.o)
        break label148;
      str = getString(2131034330);
      label110: localTextView.setText(str);
      if (!this.o)
        break label160;
    }
    label148: label160: for (int i6 = 2130837714; ; i6 = 2130837710)
    {
      localImageView.setImageResource(i6);
      return;
      i5 = am_CommonUtils.b(this, 2130771971);
      break;
      str = getString(2131034328);
      break label110;
    }
  }

  private void h()
  {
    com.clilystudio.app.netbook.event.F localF = new com.clilystudio.app.netbook.event.F(this.q.getId(), i());
    i.a().c(localF);
    AudioRecord.updateTrack(String.valueOf(this.q.getId()), i());
  }

  private int i()
  {
    if (this.m)
      return this.x;
    return 1 + (this.v - this.x);
  }

  public final void a(int paramInt, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.y = false;
      this.k.setPlayButtonDefault(this.x);
      this.x = paramInt;
      this.k.a(this.x, true);
      a(paramInt - 1);
      h();
    }
    while (true)
    {
      this.n = paramBoolean;
      a(paramBoolean);
      this.p = true;
      return;
      as.h();
    }
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
      return;
    case 2131493289:
      boolean bool;
      if (this.n)
      {
        this.n = false;
        a(this.n);
        bool = this.n;
        if (!bool)
          break label123;
        a(-1 + this.x);
      }
      while (true)
      {
        this.k.a(this.x, bool);
        this.p = true;
        return;
        this.n = true;
        h();
        this.y = false;
        break;
        as.h();
      }
    case 2131493286:
      p localp = new p();
      if (this.o)
      {
        this.o = false;
        localp.a(2);
        localp.a(f());
        i.a().c(localp);
      }
      while (true)
      {
        g();
        return;
        this.o = true;
        localp.a(1);
        localp.a(f());
        i.a().c(localp);
      }
    case 2131493295:
      label123: a(paramView);
      return;
    case 2131493294:
    }
    a(paramView);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903081);
    this.r = as.a();
    this.s = as.b();
    try
    {
      this.s.setDefaultPagesize(this.u);
      as.a(this.z);
      this.a = findViewById(2131492905);
      this.b = findViewById(2131493085);
      this.c = findViewById(2131493086);
      this.c.setOnClickListener(new z(this));
      b();
      return;
    }
    catch (XimalayaException localXimalayaException)
    {
      while (true)
        localXimalayaException.printStackTrace();
    }
  }

  protected void onDestroy()
  {
    as.b(this.z);
    super.onDestroy();
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.AudiobookInfoActivity
 * JD-Core Version:    0.6.2
 */