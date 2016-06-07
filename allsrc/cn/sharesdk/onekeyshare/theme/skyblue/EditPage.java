package cn.sharesdk.onekeyshare.theme.skyblue;

import android.app.Activity;
import android.content.Context;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.onekeyshare.EditPageFakeActivity;
import cn.sharesdk.onekeyshare.EditPageFakeActivity.ImageInfo;
import com.arcsoft.hpay100.a.a;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class EditPage extends EditPageFakeActivity
  implements TextWatcher, View.OnClickListener
{
  private static final int MAX_TEXT_COUNT = 140;
  private TextView textCounterTextView;
  private EditText textEditText;
  private EditText titleEditText;

  private void initAtUserView()
  {
    LinearLayout localLinearLayout = (LinearLayout)findViewByResName("atLayout");
    Iterator localIterator = this.platforms.iterator();
    while (localIterator.hasNext())
    {
      Platform localPlatform = (Platform)localIterator.next();
      String str = localPlatform.getName();
      if (!isShowAtUserLayout(str))
        continue;
      View localView = LayoutInflater.from(this.activity).inflate(a.f(this.activity, "skyblue_editpage_at_layout"), null);
      TextView localTextView1 = (TextView)localView.findViewById(a.g(this.activity, "atDescTextView"));
      TextView localTextView2 = (TextView)localView.findViewById(a.g(this.activity, "atTextView"));
      EditPage.1 local1 = new EditPage.1(this);
      localTextView2.setTag(localPlatform);
      localTextView2.setOnClickListener(local1);
      localTextView1.setTag(localPlatform);
      localTextView1.setOnClickListener(local1);
      localTextView2.setText(getAtUserButtonText(str));
      Context localContext = getContext();
      int i = a.e(this.activity, "list_friends");
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = getLogoName(str);
      localTextView1.setText(localContext.getString(i, arrayOfObject));
      localLinearLayout.addView(localView);
    }
  }

  private void initBodyView()
  {
    View localView = findViewByResName("closeImageView");
    localView.setTag("close");
    localView.setOnClickListener(this);
    if (this.shareParamMap.containsKey("title"))
    {
      this.titleEditText = ((EditText)findViewByResName("titleEditText"));
      this.titleEditText.setText(String.valueOf(this.shareParamMap.get("title")));
    }
    this.textCounterTextView = ((TextView)findViewByResName("textCounterTextView"));
    this.textCounterTextView.setText("140");
    this.textEditText = ((EditText)findViewByResName("textEditText"));
    this.textEditText.addTextChangedListener(this);
    this.textEditText.setText(String.valueOf(this.shareParamMap.get("text")));
    initAtUserView();
  }

  private void initImageListView()
  {
    HorizontalScrollView localHorizontalScrollView = (HorizontalScrollView)findViewByResName("hScrollView");
    if (!initImageList(new EditPage.2(this)))
      localHorizontalScrollView.setVisibility(8);
  }

  private void initTitleView()
  {
    View localView1 = findViewByResName("backImageView");
    localView1.setTag("close");
    localView1.setOnClickListener(this);
    View localView2 = findViewByResName("okImageView");
    localView2.setTag("ok");
    localView2.setOnClickListener(this);
  }

  private void initView()
  {
    if (!this.dialogMode)
    {
      RelativeLayout localRelativeLayout = (RelativeLayout)findViewByResName("mainRelLayout");
      RelativeLayout.LayoutParams localLayoutParams = (RelativeLayout.LayoutParams)localRelativeLayout.getLayoutParams();
      localLayoutParams.setMargins(0, 0, 0, 0);
      localLayoutParams.height = -1;
      localRelativeLayout.setLayoutParams(localLayoutParams);
    }
    initTitleView();
    initBodyView();
    initImageListView();
  }

  private View makeImageItemView(EditPageFakeActivity.ImageInfo paramImageInfo)
  {
    View localView1 = LayoutInflater.from(this.activity).inflate(a.f(this.activity, "skyblue_editpage_inc_image_layout"), null);
    ImageView localImageView = (ImageView)localView1.findViewById(a.g(this.activity, "imageView"));
    localImageView.setImageBitmap(paramImageInfo.bitmap);
    localImageView.setOnClickListener(new EditPage.3(this, paramImageInfo));
    View localView2 = localView1.findViewById(a.g(this.activity, "imageRemoveBtn"));
    localView2.setTag(paramImageInfo);
    localView2.setOnClickListener(new EditPage.4(this, localView1));
    return localView1;
  }

  private void onShareButtonClick(View paramView)
  {
    if (this.shareParamMap.containsKey("title"))
    {
      String str2 = this.titleEditText.getText().toString().trim();
      this.shareParamMap.put("title", str2);
    }
    String str1 = this.textEditText.getText().toString().trim();
    this.shareParamMap.put("text", str1);
    setResultAndFinish();
  }

  public void afterTextChanged(Editable paramEditable)
  {
  }

  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public void onClick(View paramView)
  {
    if (paramView.getTag() == null);
    String str;
    do
    {
      return;
      str = (String)paramView.getTag();
      if (!str.equals("close"))
        continue;
      Iterator localIterator = this.platforms.iterator();
      while (localIterator.hasNext())
        ShareSDK.logDemoEvent(5, (Platform)localIterator.next());
      finish();
      return;
    }
    while (!str.equals("ok"));
    onShareButtonClick(paramView);
  }

  public void onCreate()
  {
    if ((this.shareParamMap == null) || (this.platforms == null))
    {
      finish();
      return;
    }
    this.activity.setContentView(a.f(this.activity, "skyblue_editpage"));
    initView();
  }

  public boolean onFinish()
  {
    this.textCounterTextView = null;
    this.textEditText = null;
    this.titleEditText = null;
    return super.onFinish();
  }

  public void onResult(HashMap<String, Object> paramHashMap)
  {
    String str = getJoinSelectedUser(paramHashMap);
    if (str != null)
      this.textEditText.append(str);
  }

  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    int i = 140 - this.textEditText.length();
    this.textCounterTextView.setText(String.valueOf(i));
    TextView localTextView = this.textCounterTextView;
    if (i > 0);
    for (int j = -3158065; ; j = -65536)
    {
      localTextView.setTextColor(j);
      return;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.onekeyshare.theme.skyblue.EditPage
 * JD-Core Version:    0.6.0
 */