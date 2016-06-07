package com.clilystudio.netbook.util;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;

public class DialogUtil$FeedIntroDialog extends DialogFragment
{
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    View localView = ((LayoutInflater)getActivity().getSystemService("layout_inflater")).inflate(2130903190, null);
    ((Button)localView.findViewById(2131493393)).setOnClickListener(new u(this));
    return new AlertDialog.Builder(getActivity()).setView(localView).create();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.util.DialogUtil.FeedIntroDialog
 * JD-Core Version:    0.6.0
 */