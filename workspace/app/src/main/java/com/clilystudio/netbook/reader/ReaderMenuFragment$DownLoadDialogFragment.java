package com.clilystudio.netbook.reader;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;

import com.clilystudio.netbook.ui.SmartImageView;

public class ReaderMenuFragment$DownLoadDialogFragment
        extends DialogFragment {
    private SmartImageView a;

    public static ReaderMenuFragment$DownLoadDialogFragment a(String string, String string2, String string3) {
        ReaderMenuFragment$DownLoadDialogFragment readerMenuFragment$DownLoadDialogFragment = new ReaderMenuFragment$DownLoadDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putString("name", string);
        bundle.putString("size", string2);
        bundle.putString("link", string3);
        readerMenuFragment$DownLoadDialogFragment.setArguments(bundle);
        return readerMenuFragment$DownLoadDialogFragment;
    }

    static /* synthetic */ SmartImageView a(ReaderMenuFragment$DownLoadDialogFragment readerMenuFragment$DownLoadDialogFragment) {
        return readerMenuFragment$DownLoadDialogFragment.a;
    }

    @Override
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.a = (SmartImageView) this.getActivity().findViewById(2131493448);
    }

    @Override
    public Dialog onCreateDialog(Bundle bundle) {
        String string = this.getArguments().getString("name");
        String string2 = this.getArguments().getString("link");
        String string3 = this.getArguments().getString("size");
        h h2 = new h(this.getActivity()).a(2131034371);
        h2.e = "\u662f\u5426\u4e0b\u8f7d" + string + "(" + string3 + "\uff0c\u5efa\u8bae\u4f7f\u7528WIFI\u4e0b\u8f7d)\uff1f";
        return h2.a(2131034371, (DialogInterface.OnClickListener) ((Object) new by(this, string, string2))).b(2131034129, null).a();
    }
}
