package com.clilystudio.app.netbook.ui.game;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.clilystudio.app.netbook.am_CommonUtils;
import android.view.View;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;
import com.clilystudio.app.netbook.d;
import com.clilystudio.app.netbook.model.Account;
import com.clilystudio.app.netbook.model.Game;
import com.clilystudio.app.netbook.model.GameGift;
import com.clilystudio.app.netbook.model.GameGiftRoot;
import com.clilystudio.app.netbook.ui.BaseActivity;
import com.clilystudio.app.netbook.ui.SmartImageView;
import com.clilystudio.app.netbook.util.am_CommonUtils;
import com.clilystudio.app.netbook.util.t;
import com.clilystudio.app.netbook.widget.GameGiftGetButton;

public class GameGiftListActivity extends BaseActivity
{
  private y a;
  private Account b;
  private GameGift c;
  private TextView e;
  private View f;
  private com.clilystudio.app.netbook.view.a g;
  private boolean h;

  public static Intent a(Context paramContext, GameGiftRoot paramGameGiftRoot, boolean paramBoolean)
  {
    return new d().a(paramContext, GameGiftListActivity.class).a("game_gift_list", paramGameGiftRoot).a("is_micro_game", Boolean.valueOf(paramBoolean)).a();
  }

  private void a(String paramString)
  {
    com.clilystudio.app.netbook.view.a locala = new com.clilystudio.app.netbook.view.a(this);
    View localView = View.inflate(this, 2130903192, null);
    ((TextView)localView.findViewById(2131493395)).setText(this.c.title);
    TextView localTextView = (TextView)localView.findViewById(2131493397);
    ((TextView)localView.findViewById(2131493399)).setText(this.c.description);
    ((TextView)localView.findViewById(2131493401)).setText(this.c.usage);
    ((TextView)localView.findViewById(2131493400)).setText(t.b(this.c.rangeFrom) + " - " + t.b(this.c.rangeTo));
    locala.a(localView).show();
    Button localButton = (Button)localView.findViewById(2131493402);
    if (paramString == null)
    {
      localButton.setText("领取");
      localTextView.setText("已有 " + (this.c.total - this.c.left) + " 人领取，剩余 " + this.c.left + " 个");
      localButton.setBackgroundResource(2130837746);
      localButton.setOnClickListener(new w(this, locala));
      return;
    }
    localTextView.setText("兑换码：" + paramString);
    localButton.setText("复制兑换码并打开游戏");
    localButton.setBackgroundResource(2130837749);
    localButton.setOnClickListener(new x(this, locala, paramString));
  }

  public final void b()
  {
    if ((this.h) || (com.arcsoft.hpay100.a.a.j(this, this.c.game.getAndroidPackageName())))
      try
      {
        if (this.g != null)
          this.g.dismiss();
        a(null);
        return;
      }
      catch (Exception localException)
      {
        while (true)
          localException.printStackTrace();
      }
    Game localGame = this.c.game;
    View localView = View.inflate(this, 2130903191, null);
    ((SmartImageView)localView.findViewById(2131493394)).setImageUrl(localGame.getIcon());
    ((TextView)localView.findViewById(2131493397)).setText("剩余礼包" + this.c.left + "个");
    ((TextView)localView.findViewById(2131493395)).setText(this.c.title);
    ((TextView)localView.findViewById(2131493396)).setText(localGame.getCat() + " | " + com.arcsoft.hpay100.a.a.c(localGame.getAndroidSize()));
    GameGiftGetButton localGameGiftGetButton = (GameGiftGetButton)localView.findViewById(2131493398);
    s.a(this, localGame);
    localGameGiftGetButton.setGame(localGame);
    localGameGiftGetButton.a(localGame.getDownloadStatus());
    this.g = new com.clilystudio.app.netbook.view.a(this);
    this.g.a(localView).show();
  }

  @TargetApi(9)
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903321);
    String str = getIntent().getStringExtra("title");
    this.h = getIntent().getBooleanExtra("is_micro_game", false);
    if (str != null)
      b(str);
    while (true)
    {
      ListView localListView = (ListView)findViewById(2131493135);
      localListView.setDividerHeight(0);
      this.a = new y(this, getLayoutInflater());
      localListView.setAdapter(this.a);
      this.b = am_CommonUtils.e();
      GameGiftRoot localGameGiftRoot = (GameGiftRoot)getIntent().getSerializableExtra("game_gift_list");
      if (localGameGiftRoot != null)
      {
        GameGift[] arrayOfGameGift = localGameGiftRoot.gifts;
        this.a.a(arrayOfGameGift);
      }
      return;
      b("往期游戏");
    }
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.game.GameGiftListActivity
 * JD-Core Version:    0.6.2
 */