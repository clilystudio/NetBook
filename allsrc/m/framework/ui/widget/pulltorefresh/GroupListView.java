package m.framework.ui.widget.pulltorefresh;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ListView;

public class GroupListView extends ListView
{
  public GroupListView(Context paramContext)
  {
    super(paramContext);
  }

  public GroupListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public GroupListView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  public void setAdapter(GroupListView.GroupListAdapter paramGroupListAdapter)
  {
    GroupListView.1 local1 = new GroupListView.1(this, paramGroupListAdapter);
    GroupListView.GroupListAdapter.access$0(paramGroupListAdapter, local1);
    super.setAdapter(local1);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     m.framework.ui.widget.pulltorefresh.GroupListView
 * JD-Core Version:    0.6.0
 */