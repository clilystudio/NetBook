package com.ushaqi.zhuishushenqi.widget;

import android.app.Activity;
import android.content.Context;
import android.support.design.widget.am;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.ushaqi.zhuishushenqi.db.GameGiftRecord;
import com.ushaqi.zhuishushenqi.model.Account;
import com.ushaqi.zhuishushenqi.model.Game;
import com.ushaqi.zhuishushenqi.model.GameGift;
import com.ushaqi.zhuishushenqi.model.User;
import com.ushaqi.zhuishushenqi.ui.SmartImageView;
import com.ushaqi.zhuishushenqi.ui.game.s;
import com.ushaqi.zhuishushenqi.util.t;
import java.util.List;

public class GameGiftItemView extends RelativeLayout
{
  private GameGift a;
  private com.ushaqi.zhuishushenqi.view.a b;
  private Account c = am.e();
  private TextView d;
  private View e;
  private boolean f;

  public GameGiftItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setClickable(true);
  }

  private void a(String paramString)
  {
    com.ushaqi.zhuishushenqi.view.a locala = new com.ushaqi.zhuishushenqi.view.a(getContext());
    View localView = View.inflate(getContext(), 2130903192, null);
    ((TextView)localView.findViewById(2131493395)).setText(this.a.title);
    TextView localTextView = (TextView)localView.findViewById(2131493397);
    ((TextView)localView.findViewById(2131493399)).setText(this.a.description);
    ((TextView)localView.findViewById(2131493401)).setText(this.a.usage);
    ((TextView)localView.findViewById(2131493400)).setText(t.b(this.a.rangeFrom) + " - " + t.b(this.a.rangeTo));
    locala.a(localView).show();
    Button localButton = (Button)localView.findViewById(2131493402);
    if (paramString == null)
    {
      localButton.setText("领取");
      localTextView.setText("已有 " + (this.a.total - this.a.left) + " 人领取，剩余 " + this.a.left + " 个");
      localButton.setBackgroundResource(2130837746);
      localButton.setOnClickListener(new F(this, locala));
      return;
    }
    localTextView.setText("兑换码：" + paramString);
    localButton.setText("复制兑换码并打开游戏");
    localButton.setBackgroundResource(2130837749);
    localButton.setOnClickListener(new G(this, locala, paramString));
  }

  private void b(String paramString)
  {
    this.d.setText("查看");
    this.d.setBackgroundResource(2130837819);
    this.d.setOnClickListener(new H(this, paramString));
    this.e.setOnClickListener(new I(this, paramString));
  }

  public final void a()
  {
    if ((this.f) || (com.arcsoft.hpay100.a.a.j(getContext(), this.a.game.getAndroidPackageName())))
      try
      {
        if (this.b != null)
          this.b.dismiss();
        a(null);
        return;
      }
      catch (Exception localException)
      {
        while (true)
          localException.printStackTrace();
      }
    Game localGame = this.a.game;
    View localView = View.inflate(getContext(), 2130903191, null);
    ((SmartImageView)localView.findViewById(2131493394)).setImageUrl(localGame.getIcon());
    ((TextView)localView.findViewById(2131493397)).setText("剩余礼包" + this.a.left + "个");
    ((TextView)localView.findViewById(2131493395)).setText(this.a.title);
    ((TextView)localView.findViewById(2131493396)).setText(localGame.getCat() + " | " + com.arcsoft.hpay100.a.a.c(localGame.getAndroidSize()));
    s.a((Activity)getContext(), localGame);
    GameGiftGetButton localGameGiftGetButton = (GameGiftGetButton)localView.findViewById(2131493398);
    localGameGiftGetButton.setGame(localGame);
    localGameGiftGetButton.a(localGame.getDownloadStatus());
    localGameGiftGetButton.setGiftItemView(this);
    this.b = new com.ushaqi.zhuishushenqi.view.a(getContext());
    this.b.a(localView).show();
  }

  public final void a(GameGift paramGameGift, boolean paramBoolean)
  {
    this.f = paramBoolean;
    ((TextView)findViewById(2131493675)).setText(paramGameGift.title);
    ((TextView)findViewById(2131493677)).setText(paramGameGift.description);
    this.d = ((TextView)findViewById(2131493676));
    this.e = findViewById(2131493673);
    this.a = paramGameGift;
    GameGiftRecord localGameGiftRecord;
    if (this.c != null)
    {
      List localList = GameGiftRecord.getRecords(this.c.getUser().getId(), paramGameGift._id);
      if ((localList != null) && (!localList.isEmpty()))
      {
        localGameGiftRecord = (GameGiftRecord)localList.get(0);
        if ((localGameGiftRecord.giftId == null) || (!localGameGiftRecord.giftId.equals(paramGameGift._id)));
      }
    }
    for (String str = localGameGiftRecord.giftCode; ; str = null)
    {
      if (str != null)
      {
        b(str);
        this.e.setOnClickListener(new D(this, str));
        return;
      }
      this.e.setOnClickListener(new E(this));
      return;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.GameGiftItemView
 * JD-Core Version:    0.6.0
 */