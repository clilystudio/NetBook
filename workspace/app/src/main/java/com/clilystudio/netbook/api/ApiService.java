
package com.clilystudio.netbook.api;

import android.content.Context;
import android.net.Uri;
import android.support.design.widget.am;
import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import android.util.Log;
import com.github.kevinsawicki.http.HttpRequest;
import com.github.kevinsawicki.http.HttpRequest$HttpRequestException;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonParseException;
import com.google.gson.JsonParser;
import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.AdsResult;
import com.clilystudio.netbook.model.AliPayOrder;
import com.clilystudio.netbook.model.AutoCompleteRoot;
import com.clilystudio.netbook.model.BookAdd;
import com.clilystudio.netbook.model.BookGenderRecommend;
import com.clilystudio.netbook.model.BookHelpList;
import com.clilystudio.netbook.model.BookHelpResult;
import com.clilystudio.netbook.model.BookInfo;
import com.clilystudio.netbook.model.BookListRoot;
import com.clilystudio.netbook.model.BookRankDetailRoot;
import com.clilystudio.netbook.model.BookRankRoot;
import com.clilystudio.netbook.model.BookReviewRoot;
import com.clilystudio.netbook.model.BookShelfSyncTime;
import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.model.BookTagRoot;
import com.clilystudio.netbook.model.BookTopRoot;
import com.clilystudio.netbook.model.BookUpdate;
import com.clilystudio.netbook.model.CategoryLevelRoot;
import com.clilystudio.netbook.model.CategoryRoot;
import com.clilystudio.netbook.model.ChangeGenderRoot;
import com.clilystudio.netbook.model.ChangeNickNameRoot;
import com.clilystudio.netbook.model.Chapter;
import com.clilystudio.netbook.model.ChapterKeysRoot;
import com.clilystudio.netbook.model.ChapterRoot;
import com.clilystudio.netbook.model.ChapterSingleKey;
import com.clilystudio.netbook.model.ChargeTypes;
import com.clilystudio.netbook.model.ChineseAllPromRoot;
import com.clilystudio.netbook.model.CommentDetail;
import com.clilystudio.netbook.model.DeleteResult;
import com.clilystudio.netbook.model.DiscussSummaryList;
import com.clilystudio.netbook.model.FollowResult;
import com.clilystudio.netbook.model.FollowersResult;
import com.clilystudio.netbook.model.FollowingsResult;
import com.clilystudio.netbook.model.GameCatRoot;
import com.clilystudio.netbook.model.GameDetail;
import com.clilystudio.netbook.model.GameGiftResponse;
import com.clilystudio.netbook.model.GameGiftRoot;
import com.clilystudio.netbook.model.GameGroupRoot;
import com.clilystudio.netbook.model.GameLayoutRoot;
import com.clilystudio.netbook.model.GamePostRoot;
import com.clilystudio.netbook.model.GameRoot;
import com.clilystudio.netbook.model.GamesGiftRoot;
import com.clilystudio.netbook.model.GirlTopicList;
import com.clilystudio.netbook.model.GirlTopicResult;
import com.clilystudio.netbook.model.HotCommentRoot;
import com.clilystudio.netbook.model.HotKeywordResult;
import com.clilystudio.netbook.model.HotTweetResult;
import com.clilystudio.netbook.model.IKanshuUrlResult;
import com.clilystudio.netbook.model.MenuAd;
import com.clilystudio.netbook.model.MhdListRoot;
import com.clilystudio.netbook.model.MixTocRoot;
import com.clilystudio.netbook.model.MysteryBookList;
import com.clilystudio.netbook.model.NotifCountRoot;
import com.clilystudio.netbook.model.NotificationRoot;
import com.clilystudio.netbook.model.PayBalance;
import com.clilystudio.netbook.model.PayChargeRecord;
import com.clilystudio.netbook.model.PayConsumeRecord;
import com.clilystudio.netbook.model.PayResult;
import com.clilystudio.netbook.model.PayVoucherRecord;
import com.clilystudio.netbook.model.PostCountRoot;
import com.clilystudio.netbook.model.PostDetail;
import com.clilystudio.netbook.model.PostDetailComment;
import com.clilystudio.netbook.model.PostPublish;
import com.clilystudio.netbook.model.PurchaseChapterResult;
import com.clilystudio.netbook.model.PurchaseVipResult;
import com.clilystudio.netbook.model.RecommendUgcRoot;
import com.clilystudio.netbook.model.RelateBookRoot;
import com.clilystudio.netbook.model.RemoteBookShelf;
import com.clilystudio.netbook.model.ResultServer;
import com.clilystudio.netbook.model.ResultStatus;
import com.clilystudio.netbook.model.ReviewHistory;
import com.clilystudio.netbook.model.ReviewList;
import com.clilystudio.netbook.model.ReviewResult;
import com.clilystudio.netbook.model.Root;
import com.clilystudio.netbook.model.SearchPromRoot;
import com.clilystudio.netbook.model.SearchResultRoot;
import com.clilystudio.netbook.model.SecretAppItemRoot;
import com.clilystudio.netbook.model.ShelfMsgRoot;
import com.clilystudio.netbook.model.SplashRoot;
import com.clilystudio.netbook.model.SyncUploadResult;
import com.clilystudio.netbook.model.TimelineResult;
import com.clilystudio.netbook.model.Toc;
import com.clilystudio.netbook.model.TocSourceRoot;
import com.clilystudio.netbook.model.TocSummary;
import com.clilystudio.netbook.model.Topic;
import com.clilystudio.netbook.model.TopicCount;
import com.clilystudio.netbook.model.TopicSummary;
import com.clilystudio.netbook.model.TweetResult;
import com.clilystudio.netbook.model.TweetsResult;
import com.clilystudio.netbook.model.UGCBookDetailRoot;
import com.clilystudio.netbook.model.UGCBookListRoot;
import com.clilystudio.netbook.model.UGCNewCollection;
import com.clilystudio.netbook.model.UgcFilterRoot;
import com.clilystudio.netbook.model.User;
import com.clilystudio.netbook.model.UserInfo;
import com.clilystudio.netbook.model.UserInfoResult;
import com.clilystudio.netbook.model.UserVipInfo;
import com.clilystudio.netbook.model.UshaqiOnlineConfig;
import com.clilystudio.netbook.model.VipPlan;
import com.clilystudio.netbook.model.VoteResult;
import com.clilystudio.netbook.model.WXPayOrder;
import com.clilystudio.netbook.model.YyfPayOrder;
import com.clilystudio.netbook.model.mixtoc.EsChapterRoot;
import com.clilystudio.netbook.model.mixtoc.EsTocRoot;
import com.clilystudio.netbook.model.mixtoc.LdChapterRoot;
import com.clilystudio.netbook.model.mixtoc.LdTocRoot;
import com.clilystudio.netbook.model.mixtoc.SgChapterRoot;
import com.clilystudio.netbook.model.mixtoc.SgMixChapter;
import com.clilystudio.netbook.model.mixtoc.SgTocRoot;
import com.clilystudio.netbook.model.mixtoc.SsChapterJson;
import com.clilystudio.netbook.model.mixtoc.SsTocRoot;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.Reader;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class ApiService {
// Error: Internal #201: 
// The following method may not be correct.

    static 
    {
    }

    public ApiService(f f1)
    {
        com.xiaomi.mistatistic.sdk.c.a( new com.xiaomi.mistatistic.sdk.a.a() );
        c = f1;
    }

    public static String a;
    private static final String b = null;
    private static String d;
    private static final String e = null;
    private static String f;
    private static String g;
    private static String h;
    private static String i;
    private static String j;
    private static String k;
    private static final Gson l = null;
    private f c;     // final access specifier removed

    public static String Q(String String1)
    {
        return new StringBuilder().append( i ).append( String1 ).toString();
    }

    public static String R(String String1)
    {
        return new StringBuilder().append( j ).append( String1 ).toString();
    }

    public static String S(String String1)
    {
        return new StringBuilder().append( k ).append( String1 ).toString();
    }

    private HttpRequest a(HttpRequest HttpRequest1)
    {
        long long2 = new Date().getTime();
        boolean boolean5;

        if( e.a() )
            e.a( HttpRequest1 );
        try
        {
            boolean5 = b( HttpRequest1 ).c();
            a( HttpRequest1.a().toString(), long2, HttpRequest1.b(), "" );
        }
        catch( HttpRequest$HttpRequestException HttpRequestException4 )
        {
            a( HttpRequest1.a().toString(), long2, HttpRequest1.b(), HttpRequestException4.getClass().getName() );
            v();
            throw HttpRequestException4;
        }
        if( boolean5 )
            return HttpRequest1;
        try
        {
            throw new IOException( new StringBuilder( "Unexpected response code: " ).append( HttpRequest1.b() ).toString() );
        }
        catch( HttpRequest$HttpRequestException HttpRequestException6 )
        {
            a( HttpRequest1.a().toString(), long2, HttpRequest1.b(), HttpRequestException6.getClass().getName() );
            v();
            throw HttpRequestException6;
        }
    }

    private HttpRequest a(HttpRequest HttpRequest1, int int2)
    {
        try
        {
            if( !b( HttpRequest1, int2 ).c() )
                throw new IOException( new StringBuilder( "Unexpected response code: " ).append( HttpRequest1.b() ).toString() );
        }
        catch( HttpRequest$HttpRequestException HttpRequestException3 )
        {
            v();
            throw HttpRequestException3;
        }
        return HttpRequest1;
    }
// Error: Internal #201: 
// The following method may not be correct.

    private Root a(String String1, HashMap HashMap2)
    {
    }

    private static Object a(HttpRequest HttpRequest1, Class Class2)
    {
        Object Object3 = HttpRequest1.e();
        Object Object7;

        try
        {
            Object7 = l.fromJson( (Reader) Object3, Class2 );
        }
        catch( JsonParseException JsonParseException6 )
        {
            try
            {
                throw new ApiService$JsonException( JsonParseException6 );
            }
            finally
            {
                try
                {
                    ((Reader) Object3).close();
                }
                catch( IOException IOException5 )
                {
                }
                throw Object4;
            }
        }
        finally
        {
            ((Reader) Object3).close();
            throw Object4;
        }
        try
        {
            ((Reader) Object3).close();
        }
        catch( IOException IOException8 )
        {
            return Object7;
        }
        return Object7;
    }

    private Object a(String String1, Class Class2)
    {
        Object Object4;

        try
        {
            Object4 = a( a( HttpRequest.a( (CharSequence) new StringBuilder().append( f ).append( String1 ).toString() ) ), Class2 );
        }
        catch( IOException IOException3 )
        {
            IOException3.printStackTrace();
            return null;
        }
        return Object4;
    }

    public static String a(String String1, int int2)
    {
        Object[] Object_1darray3 = new Object[2];

        Object_1darray3[0] = String1;
        Object_1darray3[1] = Integer.valueOf( int2 );
        return String.format( "http://m.leidian.com/index.php?c=ebook&a=chapterData&bid=%s&idx=%d", Object_1darray3 );
    }

    public static String a(String String1, int int2, String String3)
    {
        String String4 = am.e( String3 );
        String[] String_1darray5 = com.clilystudio.netbook.hpay100.a.a.O( String1 );
        Object[] Object_1darray6;

        if( String_1darray5 == null )
            return null;
        Object_1darray6 = new Object[4];
        Object_1darray6[0] = String_1darray5[0];
        Object_1darray6[1] = String_1darray5[1];
        Object_1darray6[2] = Integer.valueOf( int2 );
        Object_1darray6[3] = String4;
        return String.format( "http://book.easou.com/ta/show.m?gid=%s&nid=%s&st=%d&cu=%s", Object_1darray6 );
    }

    public static String a(String String1, String String2, String String3, String String4, String String5)
    {
        return String.format( "http://novel.mse.sogou.com/content.php?md=%s&bid=%s&cmd=%s&url=%s&chapter=%s&page=1&referred=detail", new Object[] { String1, String2, String3, String4, String5 } );
    }

    public static void a(String String1)
    {
        if( !String1.equals( d ) && !d.contains( (CharSequence) "192.168" ) )
        {
            d = String1;
            f = new StringBuilder( "http://api." ).append( d ).toString();
            g = new StringBuilder( "http://chapter." ).append( d ).toString();
            a = new StringBuilder( "http://statics." ).append( d ).toString();
        }
    }

    private static void a(String String1, long long2, int int4, String String5)
    {
        long long7;

        try
        {
            long7 = new Date().getTime();
        }
        catch( Exception Exception6 )
        {
            return;
        }
        if( long7 > long2 )
        {
            try
            {
                com.xiaomi.mistatistic.sdk.c.a( new com.xiaomi.mistatistic.sdk.b.a( String1, long7 - long2, int4, String5 ) );
                com.clilystudio.netbook.umeng.a.b.a( (Context) MyApplication.a(), "api_http_error", String5 );
            }
            catch( Exception Exception9 )
            {
                return;
            }
        }
    }

    private static String ad(String String1)
    {
        return new StringBuilder().append( String1 ).append( "&distillate=true" ).toString();
    }

    private HttpRequest b(HttpRequest HttpRequest1)
    {
        f f3;
        String String4;

        HttpRequest1.b( 15000 ).a( 15000 );
        f3 = c;
        if( "1".equals( com.clilystudio.netbook.umeng.a.b.b( (Context) MyApplication.a(), "ua-toggle" ) ) )
            String4 = f3.b();
        else
            String4 = "";
        HttpRequest1.a( String4 );
        HttpRequest1.a( "X-User-Agent", c.b() );
        HttpRequest1.a( "X-Device-Id", am.h() );
        return HttpRequest1;
    }

    private HttpRequest b(HttpRequest HttpRequest1, int int2)
    {
        HttpRequest1.b( 15000 ).a( 15000 );
        HttpRequest1.a( c.a( int2 ) );
        if( int2 == 6 )
            HttpRequest1.b( "http://bookshelf.html5.qq.com/page?t=pad" );
        return HttpRequest1;
    }

    public static String b(String String1, int int2, String String3)
    {
        String String4 = am.e( am.e( String3 ) );
        Object[] Object_1darray5 = new Object[3];

        Object_1darray5[0] = String1;
        Object_1darray5[1] = Integer.valueOf( int2 );
        Object_1darray5[2] = String4;
        return String.format( "http://book.soso.com/#!/detail/%s/%d/%s", Object_1darray5 );
    }

    private static List b(HttpRequest HttpRequest1, Class Class2)
    {
        Object Object3 = HttpRequest1.e();
        Object Object8;

        try
        {
            JsonArray JsonArray7 = new JsonParser().parse( (Reader) Object3 ).getAsJsonArray();
            Iterator Iterator9;

            Object8 = new ArrayList();
            Iterator9 = JsonArray7.iterator();
            while( Iterator9.hasNext() )
            {
                JsonElement JsonElement11 = (JsonElement) Iterator9.next();

                ((List) Object8).add( l.fromJson( JsonElement11, Class2 ) );
            }
        }
        catch( JsonParseException JsonParseException6 )
        {
            try
            {
                JsonParseException6.printStackTrace();
                throw new ApiService$JsonException( JsonParseException6 );
            }
            finally
            {
                try
                {
                    ((Reader) Object3).close();
                }
                catch( IOException IOException5 )
                {
                }
                throw Object4;
            }
        }
        finally
        {
            ((Reader) Object3).close();
            throw Object4;
        }
        try
        {
            ((Reader) Object3).close();
        }
        catch( IOException IOException10 )
        {
            return (List) Object8;
        }
        return (List) Object8;
    }

    public static void j(String String1, int int2)
    {
        if( !android.text.TextUtils.isEmpty( (CharSequence) String1 ) )
        {
            String[] String_1darray3 = String1.split( "," );

            if( String_1darray3.length >= 4 )
            {
                Object[] Object_1darray4 = new String[4];
                int int5;
                Object Object6;
                Object Object7;
                Object Object8;

                for( int5 = 0; int5 < String_1darray3.length; ++int5 )
                    Object_1darray4[int5] = String_1darray3[int5].trim();
                Object6 = Object_1darray4[0];
                Object7 = Object_1darray4[1];
                Object8 = Object_1darray4[2];
                if( !android.text.TextUtils.isEmpty( (CharSequence) Object6 ) && !i.equals( Object6 ) )
                    i = (String) Object6;
                if( !android.text.TextUtils.isEmpty( (CharSequence) Object7 ) && !j.equals( Object7 ) )
                    j = (String) Object7;
                if( !android.text.TextUtils.isEmpty( (CharSequence) Object8 ) && !k.equals( Object8 ) )
                {
                    k = (String) Object8;
                    return;
                }
            }
        }
    }

    private static void v()
    {
        com.clilystudio.netbook.umeng.a.b.a( (Context) MyApplication.a(), "server_error" );
    }

    private static ChapterRoot w()
    {
        ChapterRoot ChapterRoot1 = new ChapterRoot();

        ChapterRoot1.setStatus( -3 );
        ChapterRoot1.setChapter( new Chapter() );
        return ChapterRoot1;
    }

    private static ChapterRoot x()
    {
        ChapterRoot ChapterRoot1 = new ChapterRoot();

        ChapterRoot1.setStatus( -3 );
        ChapterRoot1.setChapter( new Chapter() );
        return ChapterRoot1;
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final BookShelfSyncTime A(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final CommentDetail A(String String1, String String2)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final RemoteBookShelf B(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final void B(String String1, String String2)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final BookReviewRoot C(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final UGCBookDetailRoot C(String String1, String String2)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final ResultStatus D(String String1, String String2)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final ReviewResult D(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final BookHelpResult E(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final ResultStatus E(String String1, String String2)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final GirlTopicResult F(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final Root F(String String1, String String2)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final NotifCountRoot G(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final SyncUploadResult G(String String1, String String2)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final PostDetail H(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final SyncUploadResult H(String String1, String String2)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final SyncUploadResult I(String String1, String String2)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final TopicCount I(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final AdsResult J(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final SyncUploadResult J(String String1, String String2)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final GameGiftResponse K(String String1, String String2)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final UserInfo K(String String1)
    {
    }

    public final Root L(String String1)
    {
        HashMap HashMap2 = new HashMap();

        HashMap2.put( "token", String1 );
        return a( "/user/notification/read-important", HashMap2 );
    }

    public final Root M(String String1)
    {
        HashMap HashMap2 = new HashMap();

        HashMap2.put( "token", String1 );
        return a( "/user/notification/read-unimportant", HashMap2 );
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final AutoCompleteRoot N(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final UserVipInfo O(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final ResultStatus P(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final HotCommentRoot T(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final UGCBookDetailRoot U(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final RelateBookRoot V(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final ResultStatus W(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final RelateBookRoot X(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final GameDetail Y(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final GameGroupRoot Z(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final BookHelpList a(String String1, String String2, int int3, int int4, boolean boolean5)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final BookListRoot a(String String1, String String2, String String3, String String4, int int5, int int6)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final ChapterRoot a(String String1, String String2, int int3, String String4, String String5)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final DiscussSummaryList a(String String1, String String2, int int3, int int4, String String5, boolean boolean6)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final GameRoot a(int int1, int int2)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final PayChargeRecord a(String String1, int int2, int int3)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final PayResult a(String String1, String String2)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final PayVoucherRecord a(String String1, String String2, int int3, int int4)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final PostPublish a(String String1, String String2, String String3, String String4)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final PostPublish a(String String1, String String2, String String3, String String4, String String5, boolean boolean6)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final PurchaseChapterResult a(String String1, String String2, int int3)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final ResultStatus a(UGCNewCollection UGCNewCollection1, String String2)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final ResultStatus a(UGCNewCollection UGCNewCollection1, String String2, String String3)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final ReviewList a(String String1, String String2, String String3, int int4, int int5, boolean boolean6)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final Root a(String String1, Uri Uri2)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final UGCBookListRoot a(String String1, String String2, int int3, int int4, String String5)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final UshaqiOnlineConfig a()
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final VoteResult a(String String1, String String2, String String3)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final SsTocRoot a(int int1, int int2, String String3)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final List a(List List1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final List a(String[] String_1darray1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final ChineseAllPromRoot aa(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final GameGiftRoot ab(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final BookGenderRecommend ac(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final GamesGiftRoot b(int int1, int int2)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final GirlTopicList b(String String1, String String2, int int3, int int4, boolean boolean5)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final HotKeywordResult b()
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final PayBalance b(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final PayConsumeRecord b(String String1, int int2, int int3)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final PostPublish b(String String1, String String2, String String3)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final PostPublish b(String String1, String String2, String String3, String String4)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final PostPublish b(String String1, String String2, String String3, String String4, String String5)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final ResultStatus b(UGCNewCollection UGCNewCollection1, String String2)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final ResultStatus b(UGCNewCollection UGCNewCollection1, String String2, String String3)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final Topic b(String String1, String String2, int int3, int int4)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final WXPayOrder b(String String1, String String2)
    {
    }

    public final String b(String String1, int int2)
    {
        Object[] Object_1darray3 = new Object[2];
        Object Object4;
        String String6;

        Object_1darray3[0] = String1;
        Object_1darray3[1] = Integer.valueOf( int2 );
        Object4 = String.format( "http://bookshelf.html5.qq.com/ajax?m=show_bookdetail&resourceid=%s&serialid=%d", Object_1darray3 );
        try
        {
            String6 = SsChapterJson.getChapterUrl( a( HttpRequest.a( (CharSequence) Object4 ), 6 ).d() );
        }
        catch( HttpRequest$HttpRequestException HttpRequestException5 )
        {
            throw HttpRequestException5.getCause();
        }
        return String6;
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final BookReviewRoot c(String String1, String String2, int int3, int int4)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final BookTagRoot c(String String1, int int2, int int3)
    {
    }

    public final ChapterRoot c(String String1, int int2)
    {
        Object[] Object_1darray3 = new Object[2];
        Object Object4;
        HttpRequest HttpRequest6;
        boolean boolean7;
        int int8;
        ChapterRoot ChapterRoot9;

        Object_1darray3[0] = String1;
        Object_1darray3[1] = Integer.valueOf( int2 );
        Object4 = String.format( "http://bookshelf.html5.qq.com/ajax?m=show_bookdetail&resourceid=%s&serialid=%d", Object_1darray3 );
        try
        {
            HttpRequest6 = b( HttpRequest.a( (CharSequence) Object4 ), 6 );
            boolean7 = HttpRequest6.c();
            int8 = HttpRequest6.b();
        }
        catch( HttpRequest$HttpRequestException HttpRequestException5 )
        {
            throw HttpRequestException5.getCause();
        }
        if( !boolean7 && int8 >= 500 )
        {
            try
            {
                return x();
            }
            catch( HttpRequest$HttpRequestException HttpRequestException10 )
            {
                throw HttpRequestException10.getCause();
            }
            return (ChapterRoot) ChapterRoot9;
        }
        else
            ChapterRoot9 = SsChapterJson.getChapterRoot( HttpRequest6.d() );
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final ChapterRoot c(String String1, int int2, String String3)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final ChargeTypes c()
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final PostCountRoot c(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final PostPublish c(String String1, String String2, String String3)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final PostPublish c(String String1, String String2, String String3, String String4)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final PostPublish c(String String1, String String2, String String3, String String4, String String5)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final ResultStatus c(UGCNewCollection UGCNewCollection1, String String2, String String3)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final YyfPayOrder c(String String1, String String2)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final AliPayOrder d(String String1, String String2)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final BookRankRoot d()
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final GamePostRoot d(String String1, int int2, int int3)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final PostPublish d(String String1, String String2, String String3, String String4)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final TimelineResult d(String String1, String String2, String String3)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final Topic d(String String1, int int2)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final List d(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final CategoryRoot e()
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final DeleteResult e(String String1, String String2)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final PostDetailComment e(String String1, int int2, int int3)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final PostPublish e(String String1, String String2, String String3)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final PostPublish e(String String1, String String2, String String3, String String4)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final Toc e(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final Topic e(String String1, int int2)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final BookAdd f(String String1, String String2, String String3)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final CategoryLevelRoot f()
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final ChapterSingleKey f(String String1, String String2)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final MixTocRoot f(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final PostDetailComment f(String String1, int int2, int int3)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final ResultStatus f(String String1, String String2, String String3, String String4)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final UGCBookListRoot f(String String1, int int2)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final Account g(String String1, String String2, String String3)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final ChapterKeysRoot g(String String1, String String2)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final MhdListRoot g()
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final PostPublish g(String String1, String String2, String String3, String String4)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final TocSourceRoot g(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final UGCBookListRoot g(String String1, int int2)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final FollowingsResult h(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final MysteryBookList h()
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final PostPublish h(String String1, String String2, String String3)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final ResultStatus h(String String1, String String2)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final UGCBookListRoot h(String String1, int int2)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final FollowersResult i(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final PostPublish i(String String1, String String2, String String3)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final RecommendUgcRoot i(String String1, int int2)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final ResultStatus i(String String1, String String2)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final List i()
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final HotTweetResult j(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final PostPublish j(String String1, String String2)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final ResultStatus j(String String1, String String2, String String3)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final SplashRoot j()
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final PostPublish k(String String1, String String2)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final TopicSummary k()
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final TweetsResult k(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final VoteResult k(String String1, String String2, String String3)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final PostDetailComment l(String String1, String String2)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final ResultStatus l(String String1, String String2, String String3)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final ShelfMsgRoot l()
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final TweetResult l(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final PostPublish m(String String1, String String2)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final ResultStatus m(String String1, String String2, String String3)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final UserInfoResult m(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final VipPlan m()
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final FollowResult n(String String1, String String2)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final ResultStatus n(String String1, String String2, String String3)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final SecretAppItemRoot n()
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final List n(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final ResultStatus o(String String1, String String2, String String3)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final SearchResultRoot o(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final TweetsResult o(String String1, String String2)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final UgcFilterRoot o()
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final ChapterRoot p(String String1, String String2)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final GameRoot p()
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final ResultServer p(String String1, String String2, String String3)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final SearchResultRoot p(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final GameLayoutRoot q()
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final ReviewHistory q(String String1, String String2)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final SearchPromRoot q(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final BookInfo r(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final GameCatRoot r()
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final NotificationRoot r(String String1, String String2)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final GameLayoutRoot s()
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final NotificationRoot s(String String1, String String2)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final SgTocRoot s(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final IKanshuUrlResult t()
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final PurchaseVipResult t(String String1, String String2)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final LdTocRoot t(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final BookTopRoot u()
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final ChangeNickNameRoot u(String String1, String String2)
    {
    }

    public final String u(String String1)
    {
        Object Object2 = String.format( "http://m.leidian.com/index.php?c=ebook&a=chapterData&bid=%s&idx=0", { String1 } );
        String String4;

        try
        {
            String4 = a( HttpRequest.a( (CharSequence) Object2 ), 8 ).d();
        }
        catch( HttpRequest$HttpRequestException HttpRequestException3 )
        {
            throw HttpRequestException3.getCause();
        }
        return String4;
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final ChangeGenderRoot v(String String1, String String2)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final EsTocRoot v(String String1)
    {
    }

    public final int w(String String1)
    {
        Object Object2 = String.format( "http://bookshelf.html5.qq.com/ajax?m=show_bookcatalog&resourceid=%s", { String1 } );
        int int4;

        try
        {
            int4 = SsChapterJson.getTocCount( a( HttpRequest.a( (CharSequence) Object2 ), 6 ).d() );
        }
        catch( HttpRequest$HttpRequestException HttpRequestException3 )
        {
            throw HttpRequestException3.getCause();
        }
        return int4;
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final ResultStatus w(String String1, String String2)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final ChapterRoot x(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final ResultStatus x(String String1, String String2)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final ChapterRoot y(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final ResultStatus y(String String1, String String2)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final BookRankDetailRoot z(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final ResultStatus z(String String1, String String2)
    {
    }
}
