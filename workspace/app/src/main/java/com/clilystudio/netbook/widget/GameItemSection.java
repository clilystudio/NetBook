package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TableLayout;
import android.widget.TextView;
import butterknife.ButterKnife;
import butterknife.InjectView;
import com.clilystudio.netbook.model.Game;
import com.clilystudio.netbook.model.GameGroupItem;
import com.clilystudio.netbook.model.GameLayoutRoot.ModuleLayout;
import java.util.List;

public class GameItemSection extends TableLayout
{

  @InjectView(2131493577)
  TableLayout mContainer;

  public GameItemSection(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public final void a(int paramInt)
  {
    for (int i = 0; i < paramInt; i++)
    {
      ViewGroup localViewGroup = (ViewGroup)LayoutInflater.from(getContext()).inflate(2130903382, this.mContainer, false);
      this.mContainer.addView(localViewGroup);
    }
  }

  public final void a(GameLayoutRoot.ModuleLayout paramModuleLayout)
  {
    ((TextView)findViewById(2131493576)).setText(paramModuleLayout.getGameGroup().getName());
    List localList1 = paramModuleLayout.getGameGroup().getGames();
    for (int i = 0; i < localList1.size(); i += 3)
    {
      List localList2 = localList1.subList(i, Math.min(i + 3, localList1.size()));
      ViewGroup localViewGroup = (ViewGroup)this.mContainer.getChildAt(i / 3);
      for (int j = 0; j < localList2.size(); j++)
      {
        GameLayoutItemView localGameLayoutItemView = (GameLayoutItemView)localViewGroup.getChildAt(j);
        localGameLayoutItemView.setVisibility(0);
        Game localGame = (Game)localList2.get(j);
        localGameLayoutItemView.mTitle.setText(localGame.getName());
        localGameLayoutItemView.mSubTitle.setText(localGame.getCat());
        localGameLayoutItemView.mAction.setGame(localGame);
        localGameLayoutItemView.mAction.a(localGame.getDownloadStatus());
        localGameLayoutItemView.mImage.setImageUrl(localGame.getIcon());
        localGameLayoutItemView.mImage.a(localGame);
        localGameLayoutItemView.setOnClickListener(new M(localGameLayoutItemView, localGame));
      }
      for (int k = localList2.size(); k < 3; k++)
        localViewGroup.getChildAt(k).setVisibility(4);
    }
    requestLayout();
  }

  public final void b(GameLayoutRoot.ModuleLayout paramModuleLayout)
  {
    ((TextView)findViewById(2131493576)).setText(paramModuleLayout.getGameGroup().getName());
    List localList1 = paramModuleLayout.getGameGroup().getGames();
    for (int i = 0; i < localList1.size(); i += 3)
    {
      List localList2 = localList1.subList(i, Math.min(i + 3, localList1.size()));
      ViewGroup localViewGroup = (ViewGroup)this.mContainer.getChildAt(i / 3);
      for (int j = 0; j < localList2.size(); j++)
      {
        GameLayoutItemView localGameLayoutItemView = (GameLayoutItemView)localViewGroup.getChildAt(j);
        localGameLayoutItemView.setVisibility(0);
        Game localGame = (Game)localList2.get(j);
        localGameLayoutItemView.mTitle.setText(localGame.getName());
        localGameLayoutItemView.mSubTitle.setVisibility(8);
        localGameLayoutItemView.mAction.setH5View();
        localGameLayoutItemView.mImage.setImageResource(localGame.getIconId());
        localGameLayoutItemView.setOnClickListener(new N(localGameLayoutItemView, localGame));
        localGameLayoutItemView.mAction.setOnClickListener(new O(localGameLayoutItemView, localGame));
      }
      for (int k = localList2.size(); k < 3; k++)
        localViewGroup.getChildAt(k).setVisibility(4);
    }
    requestLayout();
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    ButterKnife.inject(this);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.widget.GameItemSection
 * JD-Core Version:    0.6.0
 */