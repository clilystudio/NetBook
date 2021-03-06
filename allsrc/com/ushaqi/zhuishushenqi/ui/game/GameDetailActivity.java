package com.ushaqi.zhuishushenqi.ui.game;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.arcsoft.hpay100.a.a;
import com.ushaqi.zhuishushenqi.model.Game;
import com.ushaqi.zhuishushenqi.model.GamePostRoot.GamePost;
import com.ushaqi.zhuishushenqi.ui.BaseLoadingActivity;
import com.ushaqi.zhuishushenqi.ui.home.HomeActivity;
import com.ushaqi.zhuishushenqi.widget.GameDownloadButton;
import com.ushaqi.zhuishushenqi.widget.GameGiftGetButton;
import com.ushaqi.zhuishushenqi.widget.GameGiftView;
import com.ushaqi.zhuishushenqi.widget.ScrollLoadListView;
import com.ushaqi.zhuishushenqi.widget.av;
import java.util.ArrayList;
import java.util.List;

public class GameDetailActivity extends BaseLoadingActivity
{
  private TextView a;
  private Game b;
  private String c;
  private GameDownloadButton e;
  private GameGiftGetButton f;
  private r g;
  private View h;
  private ScrollLoadListView i;
  private n j;
  private List<GamePostRoot.GamePost> k = new ArrayList();
  private boolean l = false;
  private boolean m = false;
  private boolean n = false;
  private BroadcastReceiver o = new h(this);
  private av p = new l(this);

  public static Intent a(Context paramContext, String paramString)
  {
    return new com.ushaqi.zhuishushenqi.d().a(paramContext, GameDetailActivity.class).a("game_id", paramString).a();
  }

  public static Intent a(Context paramContext, String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    return new com.ushaqi.zhuishushenqi.d().a(paramContext, GameDetailActivity.class).a("game_id", paramString).a("is_micro_game", Boolean.valueOf(paramBoolean1)).a("HAS_PLAYED", Boolean.valueOf(paramBoolean2)).a();
  }

  private void j()
  {
    String str;
    if (this.m)
    {
      GameDownloadButton localGameDownloadButton = this.e;
      if (this.n)
      {
        str = "继续";
        localGameDownloadButton.setText(str);
        this.e.setBackgroundResource(2130838100);
        this.e.setOnClickListener(new i(this));
      }
    }
    do
    {
      return;
      str = "试玩";
      break;
      s.a(this, this.b);
      this.e.setGame(this.b);
      this.e.a(this.b.getDownloadStatus());
    }
    while (this.f == null);
    this.f.setGame(this.b);
    this.f.a(this.b.getDownloadStatus());
  }

  public final void a(GameGiftGetButton paramGameGiftGetButton)
  {
    this.f = paramGameGiftGetButton;
  }

  protected final void b()
  {
    i();
    q localq = new q(this, 0);
    String[] arrayOfString = new String[1];
    arrayOfString[0] = this.c;
    localq.b(arrayOfString);
  }

  public void onBackPressed()
  {
    super.onBackPressed();
    if (getIntent().getBooleanExtra("from_splash", false))
      startActivity(new Intent(this, HomeActivity.class));
    finish();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a(2130903386);
    b(2131034389, 2130837866, new d(this));
    this.c = getIntent().getStringExtra("game_id");
    this.m = getIntent().getBooleanExtra("is_micro_game", false);
    this.n = getIntent().getBooleanExtra("HAS_PLAYED", false);
    LayoutInflater localLayoutInflater = LayoutInflater.from(this);
    this.i = ((ScrollLoadListView)findViewById(2131493981));
    this.i.setDividerHeight(0);
    View localView = localLayoutInflater.inflate(2130903222, this.i, false);
    this.a = ((TextView)localView.findViewById(2131493475));
    this.e = ((GameDownloadButton)localView.findViewById(2131493472));
    ImageView localImageView = (ImageView)localView.findViewById(2131493476);
    this.a.setOnClickListener(new f(this));
    localImageView.setOnClickListener(new g(this));
    this.i.addHeaderView(localView, null, false);
    this.h = localLayoutInflater.inflate(2130903325, null);
    this.i.addFooterView(this.h);
    GameGiftView localGameGiftView = (GameGiftView)localLayoutInflater.inflate(2130903223, this.i, false);
    this.i.addHeaderView(localGameGiftView, null, false);
    localGameGiftView.a(this.c, this.m);
    this.j = new n(this, localLayoutInflater);
    this.i.setAdapter(this.j);
    this.i.setOnItemClickListener(new e(this));
    b();
    this.l = a.r(this, "community_user_gender_icon_toggle");
  }

  public void onPause()
  {
    super.onPause();
    unregisterReceiver(this.o);
  }

  public void onResume()
  {
    super.onResume();
    registerReceiver(this.o, new IntentFilter("update_game_item_status"));
    if (this.b != null)
      j();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.game.GameDetailActivity
 * JD-Core Version:    0.6.0
 */