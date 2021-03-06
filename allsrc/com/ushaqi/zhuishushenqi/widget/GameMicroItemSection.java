package com.ushaqi.zhuishushenqi.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TableLayout;
import android.widget.TextView;
import butterknife.ButterKnife;
import butterknife.InjectView;
import com.ushaqi.zhuishushenqi.model.Game;
import com.ushaqi.zhuishushenqi.model.GameGroupItem;
import com.ushaqi.zhuishushenqi.model.GameLayoutRoot.ModuleLayout;
import java.util.List;

public class GameMicroItemSection extends TableLayout
{
  private boolean a = false;

  @InjectView(2131493577)
  TableLayout mContainer;

  public GameMicroItemSection(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public final void a()
  {
    View localView = LayoutInflater.from(getContext()).inflate(2130903383, this.mContainer, false);
    this.mContainer.addView(localView);
  }

  public final void a(int paramInt)
  {
    for (int i = 0; i < paramInt; i++)
    {
      ViewGroup localViewGroup = (ViewGroup)LayoutInflater.from(getContext()).inflate(2130903384, this.mContainer, false);
      this.mContainer.addView(localViewGroup);
    }
  }

  public final void a(GameLayoutRoot.ModuleLayout paramModuleLayout)
  {
    ((TextView)findViewById(2131493576)).setText(paramModuleLayout.getGameGroup().getName());
    List localList1 = paramModuleLayout.getGameGroup().getGames();
    int i = Math.min(localList1.size(), 9);
    int j = 0;
    if ((j < i) && (this.mContainer.getChildCount() > j / 3))
    {
      List localList2 = localList1.subList(j, Math.min(j + 3, localList1.size()));
      ViewGroup localViewGroup = (ViewGroup)this.mContainer.getChildAt(j / 3);
      if ((localList2 == null) || (localViewGroup == null));
      while (true)
      {
        j += 3;
        break;
        int k = 0;
        if (k < localList2.size())
        {
          GameMicroLayoutItemView localGameMicroLayoutItemView = (GameMicroLayoutItemView)localViewGroup.getChildAt(k);
          localGameMicroLayoutItemView.setVisibility(0);
          localGameMicroLayoutItemView.setHasPlayed(this.a);
          Game localGame = (Game)localList2.get(k);
          localGameMicroLayoutItemView.mTitle.setText(localGame.getName());
          localGameMicroLayoutItemView.mSubTitle.setVisibility(8);
          if (localGameMicroLayoutItemView.a)
            localGameMicroLayoutItemView.mAction.setPlayedView();
          while (true)
          {
            localGameMicroLayoutItemView.mImage.setImageUrl(localGame.getIcon());
            localGameMicroLayoutItemView.mImage.a(localGame);
            localGameMicroLayoutItemView.setOnClickListener(new P(localGameMicroLayoutItemView, localGame));
            localGameMicroLayoutItemView.mAction.setOnClickListener(new Q(localGameMicroLayoutItemView, localGame));
            k++;
            break;
            localGameMicroLayoutItemView.mAction.setH5View();
          }
        }
        for (int m = localList2.size(); m < 3; m++)
          localViewGroup.getChildAt(m).setVisibility(4);
      }
    }
    requestLayout();
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    ButterKnife.inject(this);
  }

  public void setHasPlayed(boolean paramBoolean)
  {
    this.a = paramBoolean;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.GameMicroItemSection
 * JD-Core Version:    0.6.0
 */