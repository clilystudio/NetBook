package com.ushaqi.zhuishushenqi.reader;

import android.app.Dialog;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentActivity;
import com.ushaqi.zhuishushenqi.ui.SmartImageView;
import uk.me.lewisdeane.ldialogs.h;

public class ReaderMenuFragment$DownLoadDialogFragment extends DialogFragment
{
  private SmartImageView a;

  public static DownLoadDialogFragment a(String paramString1, String paramString2, String paramString3)
  {
    DownLoadDialogFragment localDownLoadDialogFragment = new DownLoadDialogFragment();
    Bundle localBundle = new Bundle();
    localBundle.putString("name", paramString1);
    localBundle.putString("size", paramString2);
    localBundle.putString("link", paramString3);
    localDownLoadDialogFragment.setArguments(localBundle);
    return localDownLoadDialogFragment;
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    this.a = ((SmartImageView)getActivity().findViewById(2131493448));
  }

  public Dialog onCreateDialog(Bundle paramBundle)
  {
    String str1 = getArguments().getString("name");
    String str2 = getArguments().getString("link");
    String str3 = getArguments().getString("size");
    h localh = new h(getActivity()).a(2131034371);
    localh.e = ("是否下载" + str1 + "(" + str3 + "，建议使用WIFI下载)？");
    return localh.a(2131034371, new by(this, str1, str2)).b(2131034129, null).a();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.ReaderMenuFragment.DownLoadDialogFragment
 * JD-Core Version:    0.6.0
 */