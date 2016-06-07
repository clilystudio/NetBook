package cn.sharesdk.onekeyshare.theme.skyblue;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.onekeyshare.CustomerLogo;
import cn.sharesdk.onekeyshare.ShareCore;
import com.arcsoft.hpay100.a.a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class PlatformGridViewAdapter extends BaseAdapter
  implements View.OnClickListener
{
  private List<Integer> checkedPositionList = new ArrayList();
  private final Context context;
  private int directOnlyPosition = -1;
  private List<Object> logos = new ArrayList();

  public PlatformGridViewAdapter(Context paramContext)
  {
    this.context = paramContext;
  }

  private Bitmap getIcon(Platform paramPlatform, String paramString)
  {
    String str = "skyblue_logo_" + paramPlatform.getName() + paramString;
    int i = a.d(this.context, str);
    return BitmapFactory.decodeResource(this.context.getResources(), i);
  }

  private String getName(Platform paramPlatform)
  {
    if (paramPlatform == null)
      return "";
    if (paramPlatform.getName() == null)
      return "";
    int i = a.e(this.context, paramPlatform.getName());
    if (i > 0)
      return this.context.getString(i);
    return null;
  }

  public List<Object> getCheckedItems()
  {
    ArrayList localArrayList = new ArrayList();
    if (this.directOnlyPosition != -1)
    {
      localArrayList.add(getItem(this.directOnlyPosition));
      return localArrayList;
    }
    Iterator localIterator = this.checkedPositionList.iterator();
    while (localIterator.hasNext())
      localArrayList.add(getItem(((Integer)localIterator.next()).intValue()));
    return localArrayList;
  }

  public int getCount()
  {
    return this.logos.size();
  }

  public Object getItem(int paramInt)
  {
    return this.logos.get(paramInt);
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    boolean bool1 = true;
    PlatformGridViewAdapter.ViewHolder localViewHolder1;
    Object localObject1;
    boolean bool2;
    label135: label160: String str3;
    label184: Object localObject3;
    Object localObject2;
    String str2;
    label234: ImageView localImageView;
    int i;
    if (paramView == null)
    {
      paramView = LayoutInflater.from(this.context).inflate(a.f(this.context, "skyblue_share_platform_list_item"), null);
      PlatformGridViewAdapter.ViewHolder localViewHolder2 = new PlatformGridViewAdapter.ViewHolder();
      localViewHolder2.checkedImageView = ((ImageView)paramView.findViewById(a.g(this.context, "checkedImageView")));
      localViewHolder2.logoImageView = ((ImageView)paramView.findViewById(a.g(this.context, "logoImageView")));
      localViewHolder2.nameTextView = ((TextView)paramView.findViewById(a.g(this.context, "nameTextView")));
      paramView.setTag(localViewHolder2);
      localViewHolder1 = localViewHolder2;
      localObject1 = getItem(paramInt);
      if (!(localObject1 instanceof Platform))
        break label342;
      bool2 = ShareCore.isDirectShare((Platform)localObject1);
      if (this.directOnlyPosition != -1)
        break label355;
      if ((this.checkedPositionList.isEmpty()) || (!bool2))
        break label349;
      if (!(localObject1 instanceof Platform))
        break label376;
      Platform localPlatform = (Platform)localObject1;
      if (!bool1)
        break label369;
      str3 = "";
      Bitmap localBitmap2 = getIcon(localPlatform, str3);
      localObject3 = getName((Platform)localObject1);
      paramView.setOnClickListener(this);
      localObject2 = localBitmap2;
      if ((this.directOnlyPosition == -1) || (this.directOnlyPosition == paramInt))
        break label428;
      str2 = "skyblue_platform_checked_disabled";
      localViewHolder1.position = Integer.valueOf(paramInt);
      localViewHolder1.checkedImageView.setImageBitmap(BitmapFactory.decodeResource(this.context.getResources(), a.d(this.context, str2)));
      localImageView = localViewHolder1.checkedImageView;
      boolean bool3 = this.checkedPositionList.contains(localViewHolder1.position);
      i = 0;
      if (!bool3)
        break label435;
    }
    while (true)
    {
      localImageView.setVisibility(i);
      localViewHolder1.nameTextView.setText((CharSequence)localObject3);
      localViewHolder1.logoImageView.setImageBitmap((Bitmap)localObject2);
      return paramView;
      localViewHolder1 = (PlatformGridViewAdapter.ViewHolder)paramView.getTag();
      break;
      label342: bool2 = bool1;
      break label135;
      label349: bool1 = false;
      break label160;
      label355: if (paramInt != this.directOnlyPosition)
        break label160;
      bool1 = false;
      break label160;
      label369: str3 = "_checked";
      break label184;
      label376: CustomerLogo localCustomerLogo = (CustomerLogo)localObject1;
      if (bool1);
      for (Bitmap localBitmap1 = localCustomerLogo.disableLogo; ; localBitmap1 = localCustomerLogo.enableLogo)
      {
        String str1 = localCustomerLogo.label;
        paramView.setOnClickListener(this);
        localObject2 = localBitmap1;
        localObject3 = str1;
        break;
      }
      label428: str2 = "skyblue_platform_checked";
      break label234;
      label435: i = 8;
    }
  }

  public void onClick(View paramView)
  {
    Integer localInteger = ((PlatformGridViewAdapter.ViewHolder)paramView.getTag()).position;
    if ((this.directOnlyPosition != -1) && (localInteger.intValue() != this.directOnlyPosition))
      return;
    Object localObject = getItem(localInteger.intValue());
    boolean bool;
    if ((localObject instanceof Platform))
    {
      bool = ShareCore.isDirectShare((Platform)localObject);
      label56: if ((bool) && (this.directOnlyPosition == -1) && (!this.checkedPositionList.isEmpty()))
        break label124;
      if (!this.checkedPositionList.contains(localInteger))
        break label126;
      this.checkedPositionList.remove(localInteger);
      if (bool)
        this.directOnlyPosition = -1;
    }
    while (true)
    {
      notifyDataSetChanged();
      return;
      bool = true;
      break label56;
      label124: break;
      label126: this.checkedPositionList.add(localInteger);
      if (!bool)
        continue;
      this.directOnlyPosition = localInteger.intValue();
    }
  }

  public void setCustomerLogos(ArrayList<CustomerLogo> paramArrayList)
  {
    if ((paramArrayList == null) || (paramArrayList.size() == 0))
      return;
    this.logos.addAll(paramArrayList);
  }

  public void setData(Platform[] paramArrayOfPlatform, HashMap<String, String> paramHashMap)
  {
    if (paramArrayOfPlatform == null)
      return;
    if ((paramHashMap != null) && (paramHashMap.size() > 0))
    {
      ArrayList localArrayList = new ArrayList();
      int i = paramArrayOfPlatform.length;
      for (int j = 0; j < i; j++)
      {
        Platform localPlatform = paramArrayOfPlatform[j];
        if (paramHashMap.containsKey(localPlatform.getName()))
          continue;
        localArrayList.add(localPlatform);
      }
      this.logos.addAll(localArrayList);
    }
    while (true)
    {
      this.checkedPositionList.clear();
      notifyDataSetChanged();
      return;
      this.logos.addAll(Arrays.asList(paramArrayOfPlatform));
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.onekeyshare.theme.skyblue.PlatformGridViewAdapter
 * JD-Core Version:    0.6.0
 */