package com.clilystudio.app.netbook.ui.user;

import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.ButterKnife;
import butterknife.InjectView;
import com.arcsoft.hpay100.a.a;
import com.clilystudio.app.netbook.d_IntentFactory;
import com.clilystudio.app.netbook.model.User;
import com.clilystudio.app.netbook.ui.BaseActivity;
import com.clilystudio.app.netbook.ui.CircularSmartImageView;
import com.clilystudio.app.netbook.ui.CropPhotoActivity;

import java.io.File;
import java.util.Calendar;
import uk.me.lewisdeane.ldialogs.h;

public class ModifyUserInfoActivity extends BaseActivity
  implements View.OnClickListener
{
  private User a;
  private long b;
  private boolean c = true;
  private boolean e = false;

  @InjectView(2131493148)
  LinearLayout mGenderSection;

  @InjectView(2131493149)
  TextView mGenderView;

  @InjectView(2131493147)
  LinearLayout mNameSection;

  @InjectView(2131492928)
  TextView mNameView;

  @InjectView(2131493146)
  CircularSmartImageView mPortrait;

  @InjectView(2131493145)
  LinearLayout mPortraitSection;

  public static Intent a(Context paramContext, long paramLong)
  {
    return new d_IntentFactory().a_setClass(paramContext, ModifyUserInfoActivity.class).a_putExtra("nickname_updated_time", Long.valueOf(paramLong)).a();
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((paramInt1 == 9162) && (paramInt2 == -1))
    {
      Uri localUri1 = paramIntent.getData();
      Uri localUri2 = Uri.fromFile(new File(getCacheDir(), "cropped"));
      Intent localIntent = new Intent(this, CropPhotoActivity.class);
      localIntent.setData(localUri1);
      localIntent.putExtra("output", localUri2);
      startActivityForResult(localIntent, 6709);
    }
    do
    {
      do
        return;
      while (paramInt1 != 6709);
      if (paramInt2 == -1)
      {
        new t(this, this, "正在上传图片...", (Uri)paramIntent.getParcelableExtra("output")).b(new String[0]);
        return;
      }
    }
    while (paramInt2 != 404);
    e.a(this, ((Throwable)paramIntent.getSerializableExtra("error")).getMessage());
  }

  public void onClick(View paramView)
  {
    if (!this.c);
    int k;
    do
    {
      return;
      switch (paramView.getId())
      {
      case 2131493146:
      default:
        return;
      case 2131493145:
        if (this.a.getLv() < 4)
          break label167;
        k = 1;
        if (k == 0)
        {
          h localh2 = new h(this);
          localh2.d = "等级不够";
          localh2.e = "需要lv4才能换头像，再用一段时间追书吧~";
          localh2.a("知道了", null).b();
        }
        break;
      case 2131493147:
      case 2131493148:
      }
    }
    while (k == 0);
    if (!a.a(this, "EXTRA_CHANGE_AVATAR", false));
    for (int m = 1; ; m = 0)
    {
      if (m == 0)
        break label179;
      h localh3 = new h(this);
      localh3.d = "提醒";
      localh3.e = "若用违规图片作头像，会被永久封号哦。";
      localh3.a("知道了", new n(this)).b();
      return;
      label167: k = 0;
      break;
    }
    label179: a.b(this);
    return;
    long l1 = this.b;
    long l2 = Calendar.getInstance().getTimeInMillis() - l1;
    if (l2 < 0L)
      e.a(this, "暂时无法修改");
    if ((l2 >= 2592000000L) || (this.b == -2L))
    {
      View localView2 = getLayoutInflater().inflate(2130903201, null);
      EditText localEditText = (EditText)localView2.findViewById(2131493224);
      localEditText.setText(this.a.getNickname());
      localEditText.setSelection(this.a.getNickname().length());
      h localh1 = new h(this);
      localh1.d = "修改昵称";
      localEditText.setOnFocusChangeListener(new p(this, localh1.b(localView2).a("保存", new o(this, localEditText)).b(17039360, null).b()));
      return;
    }
    long l3 = 2592000000L - l2;
    if (l3 >= 86400000L)
    {
      int j = (int)(l3 / 86400000L);
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(j);
      e.a(this, String.format("再过%d天才能修改哦", arrayOfObject2));
      return;
    }
    int i = (int)(l3 / 3600000L);
    if (i == 0)
      i = 1;
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(i);
    e.a(this, String.format("再过%d小时才能修改哦", arrayOfObject1));
    return;
    if (this.e)
    {
      e.a(this, "只有一次修改性别的机会，你已经改过了哦");
      return;
    }
    View localView1 = getLayoutInflater().inflate(2130903196, null);
    AlertDialog localAlertDialog = new AlertDialog.Builder(this).create();
    localAlertDialog.setView(localView1, 0, 0, 0, 0);
    localAlertDialog.show();
    localView1.findViewById(2131493413).setOnClickListener(new k(this, localAlertDialog));
    localView1.findViewById(2131493414).setOnClickListener(new l(this, localAlertDialog));
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903114);
    b("编辑资料");
    ButterKnife.inject(this);
    this.a = am_CommonUtils.a(this).getUser();
    this.mPortrait.setImageUrl(this.a.getFullAvatar());
    this.mNameView.setText(this.a.getNickname());
    TextView localTextView = this.mGenderView;
    if (this.a.getGender().equals("male"));
    for (String str = "男"; ; str = "女")
    {
      localTextView.setText(str);
      this.b = getIntent().getLongExtra("nickname_updated_time", -1L);
      if (this.b == -1L)
      {
        this.c = false;
        r localr = new r(this, (byte)0);
        String[] arrayOfString = new String[1];
        arrayOfString[0] = am_CommonUtils.e().getToken();
        localr.execute(arrayOfString);
      }
      this.mPortraitSection.setOnClickListener(this);
      this.mNameSection.setOnClickListener(this);
      this.mGenderSection.setOnClickListener(this);
      return;
    }
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.ModifyUserInfoActivity
 * JD-Core Version:    0.6.2
 */