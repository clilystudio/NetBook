package cn.sharesdk.onekeyshare.theme.skyblue;

import android.app.Activity;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.GridView;
import android.widget.Toast;
import cn.sharesdk.onekeyshare.PlatformListFakeActivity;
import com.arcsoft.hpay100.a.a;
import java.util.List;

public class PlatformListPage extends PlatformListFakeActivity
  implements View.OnClickListener
{
  private PlatformGridViewAdapter gridViewAdapter;

  private void initView()
  {
    View localView1 = findViewByResName("backImageView");
    localView1.setTag(Integer.valueOf(17039360));
    localView1.setOnClickListener(this);
    View localView2 = findViewByResName("okImageView");
    localView2.setTag(Integer.valueOf(17039370));
    localView2.setOnClickListener(this);
    this.gridViewAdapter = new PlatformGridViewAdapter(this.activity);
    this.gridViewAdapter.setCustomerLogos(this.customerLogos);
    ((GridView)findViewByResName("gridView")).setAdapter(this.gridViewAdapter);
    new PlatformListPage.1(this).execute(new Void[0]);
  }

  private void onShareButtonClick(View paramView)
  {
    if ((this.gridViewAdapter == null) || ("locked".equals(paramView.getTag())))
      return;
    List localList = this.gridViewAdapter.getCheckedItems();
    if (localList.size() == 0)
    {
      Toast.makeText(this.activity, a.e(this.activity, "select_one_plat_at_least"), 0).show();
      return;
    }
    paramView.setTag("locked");
    onShareButtonClick(paramView, localList);
  }

  public void onClick(View paramView)
  {
    Object localObject = paramView.getTag();
    if ((localObject == null) || (!(localObject instanceof Integer)))
      return;
    switch (((Integer)localObject).intValue())
    {
    default:
      return;
    case 17039360:
      setCanceled(true);
      finish();
      return;
    case 17039370:
    }
    onShareButtonClick(paramView);
  }

  public void onCreate()
  {
    super.onCreate();
    this.activity.setContentView(a.f(this.activity, "skyblue_share_platform_list"));
    initView();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.onekeyshare.theme.skyblue.PlatformListPage
 * JD-Core Version:    0.6.0
 */