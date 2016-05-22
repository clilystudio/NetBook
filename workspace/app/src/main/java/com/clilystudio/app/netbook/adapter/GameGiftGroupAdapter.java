package com.clilystudio.app.netbook.adapter;

import android.app.Activity;
import com.clilystudio.app.netbook.am_CommonUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.clilystudio.app.netbook.model.Account;
import com.clilystudio.app.netbook.model.GameGiftGroup;
import com.clilystudio.app.netbook.model.GiftGame;
import com.clilystudio.app.netbook.model.GiftGameGift;
import com.clilystudio.app.netbook.ui.SmartImageView;
import com.clilystudio.app.netbook.util.am_CommonUtils;
import com.clilystudio.app.netbook.widget.GiftGameGameButton;
import com.clilystudio.app.netbook.widget.GiftGameGiftButton;

public final class GameGiftGroupAdapter extends u<GameGiftGroup>
{
  private LayoutInflater a;
  private Account b;

  public GameGiftGroupAdapter(Activity paramActivity)
  {
    this.a = LayoutInflater.from(paramActivity);
    this.b = am_CommonUtils.e();
  }

  public final int getItemViewType(int paramInt)
  {
    return ((GameGiftGroup)getItem(paramInt)).getType();
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    GameGiftGroup localGameGiftGroup = (GameGiftGroup)getItem(paramInt);
    int i = localGameGiftGroup.getType();
    if (paramView == null)
      switch (i)
      {
      default:
      case 0:
      case 1:
      case 2:
      }
    while (true)
      switch (i)
      {
      default:
        return paramView;
        paramView = this.a.inflate(2130903280, paramViewGroup, false);
        continue;
        paramView = this.a.inflate(2130903281, paramViewGroup, false);
        continue;
        paramView = this.a.inflate(2130903282, paramViewGroup, false);
      case 0:
      case 1:
      case 2:
      }
    GiftGame localGiftGame = localGameGiftGroup.getGame();
    GameGiftGroupAdapter.GameHolder localGameHolder = new GameGiftGroupAdapter.GameHolder(paramView);
    localGameHolder.icon.setImageUrl(localGiftGame.icon, 2130837766);
    localGameHolder.title.setText(localGiftGame.getName());
    localGameHolder.desc.setText("有 " + localGiftGame.followers + " 个小伙伴在玩");
    localGameHolder.button.setGame(localGiftGame);
    localGameHolder.button.a(localGiftGame.getDownloadStatus());
    return paramView;
    GiftGameGift localGiftGameGift = localGameGiftGroup.getGift();
    GameGiftGroupAdapter.GiftHolder localGiftHolder = new GameGiftGroupAdapter.GiftHolder(paramView);
    localGiftHolder.title.setText(localGiftGameGift.title);
    localGiftHolder.desc.setText(localGiftGameGift.description);
    localGiftHolder.button.setGift(localGiftGameGift);
    localGiftHolder.button.setGame(localGameGiftGroup.getGame());
    localGiftHolder.button.setAccount(this.b);
    localGiftHolder.button.a(localGameGiftGroup.getGame().getDownloadStatus());
    return paramView;
    new GameGiftGroupAdapter.MoreHolder(paramView).title.setOnClickListener(new n(this, localGameGiftGroup));
    return paramView;
  }

  public final int getViewTypeCount()
  {
    return 3;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.adapter.GameGiftGroupAdapter
 * JD-Core Version:    0.6.2
 */