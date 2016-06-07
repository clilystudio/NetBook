package m.framework.ui.widget.pulltorefresh;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;

public abstract class GroupListView$GroupListAdapter
{
  private BaseAdapter adapter;

  private void setInnerAdapter(BaseAdapter paramBaseAdapter)
  {
    this.adapter = paramBaseAdapter;
  }

  public abstract Object getChild(int paramInt1, int paramInt2);

  public abstract View getChildView(int paramInt1, int paramInt2, View paramView, ViewGroup paramViewGroup);

  public abstract int getChildrenCount(int paramInt);

  public abstract int getGroupCount();

  public abstract String getGroupTitle(int paramInt);

  public abstract View getGroupTitleView(int paramInt, View paramView, ViewGroup paramViewGroup);

  public void notifyDataSetChanged()
  {
    this.adapter.notifyDataSetChanged();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     m.framework.ui.widget.pulltorefresh.GroupListView.GroupListAdapter
 * JD-Core Version:    0.6.0
 */