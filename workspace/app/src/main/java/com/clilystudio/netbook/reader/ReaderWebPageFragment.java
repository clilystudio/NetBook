package com.clilystudio.netbook.reader;

import android.os.Bundle;

import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.api.b;

public class ReaderWebPageFragment
        extends WebPageFragment {
    private int a;

    public static ReaderWebPageFragment a(int n, String string) {
        ReaderWebPageFragment readerWebPageFragment = new ReaderWebPageFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("MODE", n);
        bundle.putString("KEY", string);
        readerWebPageFragment.setArguments(bundle);
        return readerWebPageFragment;
    }

    public static ReaderWebPageFragment a(int n, String string, int n2) {
        ReaderWebPageFragment readerWebPageFragment = new ReaderWebPageFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("MODE", n);
        bundle.putString("KEY", string);
        bundle.putInt("CHAPTER_INDEX", n2);
        readerWebPageFragment.setArguments(bundle);
        return readerWebPageFragment;
    }

    public static ReaderWebPageFragment a(int n, String string, int n2, String string2) {
        ReaderWebPageFragment readerWebPageFragment = new ReaderWebPageFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("MODE", n);
        bundle.putString("KEY", string);
        bundle.putInt("CHAPTER_INDEX", n2);
        bundle.putString("CHAPTER_URL", string2);
        readerWebPageFragment.setArguments(bundle);
        return readerWebPageFragment;
    }

    public static ReaderWebPageFragment a(int n, String string, String string2, String string3, String string4, String string5) {
        ReaderWebPageFragment readerWebPageFragment = new ReaderWebPageFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("MODE", n);
        bundle.putString("SG_MD", string);
        bundle.putString("KEY", string2);
        bundle.putString("SG_CMD", string3);
        bundle.putString("CHAPTER_URL", string4);
        bundle.putString("SG_CHAPTER", string5);
        readerWebPageFragment.setArguments(bundle);
        return readerWebPageFragment;
    }

    @Override
    protected final String a() {
        this.a = this.getArguments().getInt("MODE");
        String string = this.getArguments().getString("KEY");
        b.a();
        b.b();
        switch (this.a) {
            default: {
                return ApiService.Q(string);
            }
            case 4: {
                return ApiService.S(string);
            }
            case 2: {
                return ApiService.R(string);
            }
            case 6: {
                return ApiService.b(string, this.getArguments().getInt("CHAPTER_INDEX"), this.getArguments().getString("CHAPTER_URL"));
            }
            case 7: {
                return ApiService.a(this.getArguments().getString("SG_MD"), string, this.getArguments().getString("SG_CMD"), this.getArguments().getString("CHAPTER_URL"), this.getArguments().getString("SG_CHAPTER"));
            }
            case 8: {
                return ApiService.a(string, this.getArguments().getInt("CHAPTER_INDEX"));
            }
            case 3:
        }
        return ApiService.a(string, this.getArguments().getInt("CHAPTER_INDEX"), this.getArguments().getString("CHAPTER_URL"));
    }
}
