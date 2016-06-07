.class public Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;
.super Lcom/ushaqi/zhuishushenqi/ui/home/HomeFragment;
.source "SourceFile"
# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
# static fields
.field private static final a:Ljava/lang/String;
# instance fields
.field private A:Z
.field private B:J
.field private C:Landroid/widget/AdapterView$OnItemClickListener;
.field private D:Landroid/widget/AdapterView$OnItemLongClickListener;
.field private E:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;
.field private b:Z
.field private c:Landroid/view/View;
.field private d:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
.field private e:Landroid/widget/ListView;
.field private f:Landroid/view/View;
.field private g:Landroid/view/View;
.field private h:Landroid/view/View;
.field private i:Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;
.field private j:Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;
.field private k:I
.field private l:Landroid/widget/RelativeLayout;
.field private m:Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingView;
.field private n:Landroid/widget/TextView;
.field private o:Landroid/widget/TextView;
.field private p:Landroid/widget/ImageView;
.field private q:Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;
.field private r:Lcom/ximalaya/ting/android/opensdk/model/album/Album;
.field private s:I
.field private t:I
.field private u:Lcom/ushaqi/zhuishushenqi/util/as;
.field private v:I
.field private w:Landroid/widget/RelativeLayout;
.field private x:Landroid/widget/Button;
.field private y:Landroid/widget/Button;
.field private z:Z
# direct methods
.method static constructor <clinit>()V
    .locals 1
    .prologue
    v0 = Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;;
    v0 = v0.getSimpleName();
    sput-object v0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a:Ljava/lang/String;
    return;
.end method
.method public constructor <init>()V
    .locals 2
    .prologue
    v1 = 0x0;
    p0.<init>();
    v0 = 0x1;
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->b = v0;
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->k = v1;
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/as;->a()Lcom/ushaqi/zhuishushenqi/util/as;
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->u = v0;
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->v = v1;
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->z = v1;
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->A = v1;
    v0 = 0x0;
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->B = v0;
    v0 = new p();
    v0.<init>(p0);
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->C = v0;
    v0 = new q();
    v0.<init>(p0);
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->D = v0;
    v0 = new x();
    v0.<init>(p0);
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->E = v0;
    return;
.end method
.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ushaqi/zhuishushenqi/model/BookShelf;I)J
    .locals 2
    .prologue
    v0 = p1.getType();
    v1 = 0x3;
    if (v0 != v1) {
//       if-ne v0, v1, :cond_0
    }
    v0 = p1.getBookFeed();
    v0 = v0.getLastActionTime();
    :goto_0
    return v0;
    :cond_0
    if (p2 != 0) {
//       if-nez p2, :cond_1
    }
    v0 = p1.getLastUpdate();
    goto :goto_0
    :cond_1
    v0 = p1.getLastRead();
    goto :goto_0
.end method
.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)Lcom/ushaqi/zhuishushenqi/adapter/HomeShelfAdapter;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->j;
    return v0;
.end method
.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;I)Lcom/ushaqi/zhuishushenqi/model/BookShelf;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e;
    v0 = v0.getAdapter();
    v0 = v0.getItem(p1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;
    return v0;
.end method
.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;)Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;
    .locals 0
    .prologue
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->i = p1;
    return p1;
.end method
.method private a(I)V
    .locals 4
    .prologue
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/c;->a()Lcom/ushaqi/zhuishushenqi/util/c;
    v0.b();
    v0 = p0.getActivity();
    v1 = new StringBuilder();
    v2 = "DELETE_SHELF_AD_KEY";
    v1.<init>(v2);
    v1 = v1.append(p1);
    v1 = v1.toString();
    v2 = new Date();
    v2.<init>();
    v2 = v2.getTime();
    Lcom/arcsoft/hpay100/a/a.b(v0, v1, v2, v3);
    p0.k();
    v0 = p0.getActivity();
    v1 = "ad_delete_shelf";
    Lcom/umeng/a/b.a(v0, v1);
    return;
.end method
.method private a(Lcom/ushaqi/zhuishushenqi/db/BookFile;)V
    .locals 2
    .prologue
    Lcom/ushaqi/zhuishushenqi/model/TxtFileObject.delete(p1);
    p0.k();
    v0 = p1.getFilePath();
    v1 = new u();
    v1.<init>(p0, v0);
    v1.start();
    return;
.end method
.method private a(Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;Z)V
    .locals 1
    .prologue
    v0 = p1.getBookId();
    Lcom/arcsoft/hpay100/a/a.t(v0);
    Lcom/ushaqi/zhuishushenqi/db/BookReadRecord.addAccountInfo(p1);
    if (p2 == 0) {
//       if-eqz p2, :cond_0
    }
    p0.k();
    v0 = p1.getBookId();
    Lcom/arcsoft/hpay100/a/a.w(v0);
    :cond_0
    return;
.end method
.method private a(Lcom/ushaqi/zhuishushenqi/model/BookShelf;Z)V
    .locals 3
    .prologue
    v0 = p1.getBookRecord();
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    v0 = p1.getBookRecord();
    v1 = v0.getBookId();
    Lcom/ushaqi/zhuishushenqi/db/BookReadRecord.delete(v0);
    p0.a(v1);
    if (p2 == 0) {
//       if-eqz p2, :cond_0
    }
    p0.b(v1);
    :cond_0
    v2 = v0.getTitle();
    v0 = v0.isRecommended();
    p0.a(v1, v2, v0);
    :cond_1
    :goto_0
    return;
    :cond_2
    v0 = p1.getTxt();
    if (v0 == 0) {
//       if-eqz v0, :cond_3
    }
    v0 = p1.getTxt();
    p0.a(v0);
    goto :goto_0
    :cond_3
    v0 = p1.getType();
    v1 = 0x1;
    if (v0 != v1) {
//       if-ne v0, v1, :cond_4
    }
    v0 = p1.getAdIndex();
    p0.a(v0);
    goto :goto_0
    :cond_4
    v0 = p1.getType();
    v1 = 0x4;
    if (v0 != v1) {
//       if-ne v0, v1, :cond_1
    }
    v0 = p1.getAlbum();
    v0.delete();
    p0.k();
    goto :goto_0
.end method
.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ushaqi/zhuishushenqi/db/AudioRecord;)V
    .locals 8
    .prologue
    v0 = p1.convert2Album();
    v1 = p1.getTrack();
    v2 = p0.getActivity();
    v4 = v0.getId();
    Lcom/ushaqi/zhuishushenqi/util/e.a(v2, v4, v5, v1);
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->s = v1;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->E;
    Lcom/ushaqi/zhuishushenqi/util/as.a(v2);
    p0.g();
    v2 = v0.getCoverUrlSmall();
    v3 = v0.getAlbumTitle();
    v4 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->m;
    v4.setImageUrl(v2);
    v4 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->n;
    v4.setText(v3);
    Lcom/ushaqi/zhuishushenqi/util/e.a(v3);
    v3 = new h();
    v3.<init>();
    v4 = 0x1;
    new-array v4, v4, [Ljava/lang/String;
    v5 = 0x0;
    v4[v5] = v2;
    v3.execute(v4);
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->r = v0;
    v2 = v1 / 0x64;
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->t = v2;
    v2 = new HashMap();
    v2.<init>();
    v3 = "album_id";
    v4 = new StringBuilder();
    v4.<init>();
    v6 = v0.getId();
    v0 = v4.append(v6, v7);
    v0 = v0.toString();
    v2.put(v3, v0);
    v0 = "sort";
    v3 = "asc";
    v2.put(v0, v3);
    v0 = "page";
    v3 = new StringBuilder();
    v3.<init>();
    v4 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->t;
    v4 = v4 + 0x1;
    v3 = v3.append(v4);
    v3 = v3.toString();
    v2.put(v0, v3);
    :try_start_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->q;
    v3 = 0x64;
    v0.setDefaultPagesize(v3);
    :try_end_0
    .catch Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException; {:try_start_0 .. :try_end_0} :catch_0
    :goto_0
    v0 = new D();
    v0.<init>(p0, v1);
    Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest.getTracks(v2, v0);
    return;
    :catch_0
    move-exception v0
    v0.printStackTrace();
    goto :goto_0
.end method
.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;)V
    .locals 2
    .prologue
    if (p1 == 0) {
//       if-eqz p1, :cond_0
    }
    v0 = p0.getActivity();
    v1 = p1.getBookId();
    v0 = Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity.a(v0, v1);
    p0.startActivity(v0);
    :cond_0
    return;
.end method
.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ushaqi/zhuishushenqi/model/Advert;)V
    .locals 1
    .prologue
    v0 = 0x1;
    p1.setRead(v0);
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/c;->a()Lcom/ushaqi/zhuishushenqi/util/c;
    v0.a(p1);
    return;
.end method
.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ushaqi/zhuishushenqi/model/BookShelf;)V
    .locals 1
    .prologue
    v0 = 0x1;
    p0.a(p1, v0);
    return;
.end method
.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ushaqi/zhuishushenqi/model/BookShelf;Z)V
    .locals 0
    .prologue
    p0.a(p1, p2);
    return;
.end method
.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ximalaya/ting/android/opensdk/model/track/Track;)V
    .locals 0
    .prologue
    p0.a(p1);
    return;
.end method
.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Ljava/util/List;)V
    .locals 5
    .prologue
    v4 = 0x0;
    v0 = p0.getActivity();
    v0 = v0.getLayoutInflater();
    v1 = 0x7f030154;
    v2 = 0x0;
    v1 = v0.inflate(v1, v4, v2);
    v0 = 0x7f0c0455;
    v0 = v1.findViewById(v0);
    check-cast v0, Landroid/widget/CheckBox;
    v2 = new h();
    v3 = p0.getActivity();
    v2.<init>(v3);
    v1 = v2.a(v1);
    v2 = "\u786e\u5b9a";
    v3 = new t();
    v3.<init>(p0, p1, v0);
    v0 = v1.a(v2, v3);
    v1 = "\u53d6\u6d88";
    v0 = v0.b(v1, v4);
    v0 = v0.a();
    v0.show();
    return;
.end method
.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Ljava/util/List;Ljava/util/List;)V
    .locals 16
    .prologue
    v5 = 0x0;
    v6 = 0x0;
    v2 = p0.getActivity();
    v3 = "feed_chapter_count";
    v4 = 0x32;
    v9 = Lcom/arcsoft/hpay100/a/a.a(v2, v3, v4);
    v2 = p2.size();
    v3 = p1.size();
    if (v2 > v3) {
//       if-gt v2, v3, :cond_0
    }
    v4 = v2;
    :goto_0
    v2 = 0x0;
    v7 = v2;
    :goto_1
    if (v7 >= v4) {
//       if-ge v7, v4, :cond_3
    }
    v0 = p2;
    v2 = v0.get(v7);
    v3 = v2;
    check-cast v3, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;
    v0 = p1;
    v2 = v0.get(v7);
    check-cast v2, Lcom/ushaqi/zhuishushenqi/model/BookUpdate;
    if (v3 == 0) {
//       if-eqz v3, :cond_8
    }
    if (v2 == 0) {
//       if-eqz v2, :cond_8
    }
    v10 = v2.getChaptersCount();
    v8 = v3.getUpdated();
    v12 = v8.getTime();
    v8 = v2.getUpdated();
    v14 = v8.getTime();
    cmp-long v8, v12, v14
    if (v8 >= 0) {
//       if-gez v8, :cond_1
    }
    v8 = 0x1;
    :goto_2
    if (v8 == 0) {
//       if-eqz v8, :cond_7
    }
    v5 = v2.getUpdated();
    v3.setUpdated(v5);
    v2 = v2.getLastChapter();
    v3.setLastChapter(v2);
    v2 = 0x1;
    v3.setUnread(v2);
    v3.setChapterCount(v10);
    v3.save();
    v2 = 0x1;
    :goto_3
    v5 = v3.isFeeding();
    if (v5 == 0) {
//       if-eqz v5, :cond_6
    }
    v8 = v3.isFeedFat();
    v5 = v3.getChapterCountAtFeed();
    v5 = v10 - v5;
    if (v5 < v9) {
//       if-lt v5, v9, :cond_2
    }
    v5 = 0x1;
    :goto_4
    if (v8 == v5) {
//       if-eq v8, v5, :cond_6
    }
    v3.setFeedFat(v5);
    v3.save();
    v3 = 0x1;
    v5 = v2;
    v2 = v3;
    :goto_5
    v3 = v7 + 0x1;
    v7 = v3;
    v6 = v2;
    goto :goto_1
    :cond_0
    v4 = v3;
    goto :goto_0
    :cond_1
    v8 = 0x0;
    goto :goto_2
    :cond_2
    v5 = 0x0;
    goto :goto_4
    :cond_3
    if (v5 == 0) {
//       if-eqz v5, :cond_4
    }
    p0.k();
    v2 = p0.getActivity();
    v3 = 0x7f050161;
    Lcom/ushaqi/zhuishushenqi/util/e.a(v2, v3);
    :goto_6
    return;
    :cond_4
    if (v6 == 0) {
//       if-eqz v6, :cond_5
    }
    p0.k();
    goto :goto_6
    :cond_5
    v0 = p0;
    v2 = v0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->j;
    v2.notifyDataSetChanged();
    v2 = p0.getActivity();
    v3 = 0x7f050162;
    Lcom/ushaqi/zhuishushenqi/util/e.a(v2, v3);
    goto :goto_6
    :cond_6
    v5 = v2;
    v2 = v6;
    goto :goto_5
    :cond_7
    v2 = v5;
    goto :goto_3
    :cond_8
    v2 = v6;
    goto :goto_5
.end method
.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Ljava/util/List;Z)V
    .locals 5
    .prologue
    v1 = p1.iterator();
    :cond_0
    :goto_0
    v0 = v1.hasNext();
    if (v0 == 0) {
//       if-eqz v0, :cond_5
    }
    v0 = v1.next();
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;
    v2 = v0.getBookRecord();
    if (v2 == 0) {
//       if-eqz v2, :cond_2
    }
    v2 = v0.getBookRecord();
    v3 = v2.getBookId();
    Lcom/ushaqi/zhuishushenqi/db/BookReadRecord.delete(v2);
    Lcom/arcsoft/hpay100/a/a.t(v3);
    if (p2 == 0) {
//       if-eqz p2, :cond_1
    }
    p0.b(v3);
    :cond_1
    v4 = v2.getTitle();
    v2 = v2.isRecommended();
    p0.a(v3, v4, v2);
    v0 = v0.getBookRecord();
    v0 = v0.getBookId();
    Lcom/arcsoft/hpay100/a/a.v(v0);
    goto :goto_0
    :cond_2
    v2 = v0.getTxt();
    if (v2 == 0) {
//       if-eqz v2, :cond_3
    }
    v0 = v0.getTxt();
    p0.a(v0);
    goto :goto_0
    :cond_3
    v2 = v0.getType();
    v3 = 0x1;
    if (v2 != v3) {
//       if-ne v2, v3, :cond_4
    }
    v0 = v0.getAdIndex();
    p0.a(v0);
    goto :goto_0
    :cond_4
    v2 = v0.getType();
    v3 = 0x4;
    if (v2 != v3) {
//       if-ne v2, v3, :cond_0
    }
    v0 = v0.getAlbum();
    v0.delete();
    p0.k();
    goto :goto_0
    :cond_5
    p0.k();
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;
    v1 = new BookShelfRefreshEvent();
    v1.<init>();
    v0.c(v1);
    return;
.end method
.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Z)V
    .locals 0
    .prologue
    p0.a(p1);
    return;
.end method
.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;[Ljava/lang/CharSequence;Lcom/ushaqi/zhuishushenqi/model/BookShelf;)V
    .locals 2
    .prologue
    if (p1 == 0) {
//       if-eqz p1, :cond_0
    }
    if (p2 != 0) {
//       if-nez p2, :cond_1
    }
    :cond_0
    :goto_0
    return;
    :cond_1
    v0 = new h();
    v1 = p0.getActivity();
    v0.<init>(v1);
    v1 = p2.getTitle();
    v0.Luk/me/lewisdeane/ldialogs/h;->d = v1;
    v1 = new r();
    v1.<init>(p0, p2);
    v0 = v0.a(p1, v1);
    v0.b();
    goto :goto_0
.end method
.method private a(Lcom/ximalaya/ting/android/opensdk/model/track/Track;)V
    .locals 2
    .prologue
    v0 = p1.getAlbum();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v1 = v0.getAlbumTitle();
    Lcom/ushaqi/zhuishushenqi/util/e.a(v1);
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->n;
    v0 = v0.getAlbumTitle();
    v1.setText(v0);
    :goto_0
    v0 = p1.getCoverUrlSmall();
    v0 = Landroid/text/TextUtils.isEmpty(v0);
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->m;
    v1 = 0x7f020107;
    v0.setImageResource(v1);
    :goto_1
    return;
    :cond_0
    v0 = p1.getTrackTitle();
    Lcom/ushaqi/zhuishushenqi/util/e.a(v0);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->n;
    v1 = p1.getTrackTitle();
    v0.setText(v1);
    goto :goto_0
    :cond_1
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->m;
    v1 = p1.getCoverUrlSmall();
    v0.setImageUrl(v1);
    goto :goto_1
.end method
.method private a(Ljava/lang/String;)V
    .locals 2
    .prologue
    p0.k();
    Lcom/arcsoft/hpay100/a/a.t(p1);
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;
    v1 = new BookShelfRefreshEvent();
    v1.<init>();
    v0.c(v1);
    Lcom/arcsoft/hpay100/a/a.v(p1);
    return;
.end method
.method private a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .prologue
    if (p3 == 0) {
//       if-eqz p3, :cond_0
    }
    v0 = p0.getActivity();
    v1 = "book_recommend_delete_click";
    Lcom/umeng/a/b.a(v0, v1, p2);
    :cond_0
    v0 = p0.getActivity();
    v1 = p0.getActivity();
    v1 = Lcom/arcsoft/hpay100/a/a.p(v1);
    Lcom/a/a/a.b(v0, p1, v1);
    return;
.end method
.method private a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookShelf;",
            ">;)V"
        }
    .end annotation
    .prologue
    v0 = p1.isEmpty();
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = p0.getActivity();
    v0 = Landroid/support/design/widget/am.q(v0);
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = 0x0;
    p0.c(p1, v0);
    v0 = p0.getActivity();
    v0 = Lcom/arcsoft/hpay100/a/a.F(v0);
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/c;->a()Lcom/ushaqi/zhuishushenqi/util/c;
    v0.c();
    v0 = 0x4;
    p0.c(p1, v0);
    :cond_0
    return;
.end method
.method private a(Ljava/util/List;ILcom/ushaqi/zhuishushenqi/model/Advert;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookShelf;",
            ">;I",
            "Lcom/ushaqi/zhuishushenqi/model/Advert;",
            ")V"
        }
    .end annotation
    .prologue
    v0 = Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment.b(p1, p2);
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v0 = p1.get(p2);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;
    v0.setAdvert(p3);
    v0.setAdIndex(p2);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->j;
    v0.notifyDataSetChanged();
    :cond_0
    :goto_0
    if (p2 <= 0) {
//       if-lez p2, :cond_2
    }
    v0 = "shelf_five";
    :goto_1
    p3.setPosition(v0);
    v0 = p0.getActivity();
    p3.recordShow(v0);
    return;
    :cond_1
    v0 = Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment.a(p1, p2);
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = new BookShelf();
    v0.<init>();
    v0.setAdvert(p3);
    v0.setAdIndex(p2);
    p1.add(p2, v0);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->j;
    v0.notifyDataSetChanged();
    goto :goto_0
    :cond_2
    v0 = "shelf_top";
    goto :goto_1
.end method
.method private a(Ljava/util/List;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookShelf;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;",
            ">;)V"
        }
    .end annotation
    .prologue
    v4 = new BookFeed();
    v4.<init>();
    v5 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getAllFeedFat()Ljava/util/List;
    v0 = 0x0;
    v6 = p2.iterator();
    v2 = v0;
    :goto_0
    v0 = v6.hasNext();
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v0 = v6.next();
    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;
    v8 = v0.Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->lastActionTime;
    v10 = 0x0;
    cmp-long v1, v8, v10
    if (v1 == 0) {
//       if-eqz v1, :cond_3
    }
    v0 = v0.Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->lastActionTime;
    v8 = 0x0;
    cmp-long v7, v2, v8
    if (v7 != 0) {
//       if-nez v7, :cond_0
    }
    v2 = v0;
    goto :goto_0
    :cond_0
    cmp-long v7, v2, v0
    if (v7 >= 0) {
//       if-gez v7, :cond_3
    }
    :goto_1
    v2 = v0;
    goto :goto_0
    :cond_1
    v0 = v5.isEmpty();
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    v0 = 0x0;
    v4.setFat(v0);
    v0 = 0x7f050189;
    v0 = p0.getString(v0);
    v1 = 0x1;
    new-array v1, v1, [Ljava/lang/Object;
    v5 = 0x0;
    v6 = p2.size();
    v6 = Ljava/lang/Integer.valueOf(v6);
    v1[v5] = v6;
    v0 = Ljava/lang/String.format(v0, v1);
    v4.setTitle(v0);
    :goto_2
    v0 = new BookShelf();
    v0.<init>();
    v0.setBookFeed(v4);
    v4.setLastActionTime(v2, v3);
    p1.add(v0);
    return;
    :cond_2
    v0 = 0x1;
    v4.setFat(v0);
    v0 = 0x7f050188;
    v1 = p0.getString(v0);
    v0 = 0x1;
    new-array v6, v0, [Ljava/lang/Object;
    v7 = 0x0;
    v0 = 0x0;
    v0 = v5.get(v0);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;
    v0 = v0.getTitle();
    v6[v7] = v0;
    v0 = Ljava/lang/String.format(v1, v6);
    v4.setTitle(v0);
    goto :goto_2
    :cond_3
    v0 = v2;
    goto :goto_1
.end method
.method private a(Z)V
    .locals 2
    .prologue
    if (p1 == 0) {
//       if-eqz p1, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->p;
    v1 = 0x7f020050;
    v0.setImageResource(v1);
    :goto_0
    return;
    :cond_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->p;
    v1 = 0x7f0201a5;
    v0.setImageResource(v1);
    goto :goto_0
.end method
.method private static a(Landroid/content/Context;I)Z
    .locals 4
    .prologue
    v0 = new StringBuilder();
    v1 = "DELETE_SHELF_AD_KEY";
    v0.<init>(v1);
    v0 = v0.append(p1);
    v0 = v0.toString();
    v2 = 0x0;
    v0 = Lcom/arcsoft/hpay100/a/a.a(p0, v0, v2, v3);
    v2 = new Date();
    v2.<init>();
    v2 = v2.getTime();
    v0 = v2 - v0;
    v2 = 0x5265c00;
    cmp-long v0, v0, v2
    if (v0 <= 0) {
//       if-lez v0, :cond_0
    }
    v0 = 0x1;
    :goto_0
    return v0
    :cond_0
    v0 = 0x0;
    goto :goto_0
.end method
.method private static a(Ljava/util/List;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookShelf;",
            ">;I)Z"
        }
    .end annotation
    .prologue
    v4 = 0x4;
    v1 = 0x0;
    v2 = 0x1;
    v0 = p0.size();
    if (p1 < v0) {
//       if-lt p1, v0, :cond_0
    }
    v0 = v1;
    :goto_0
    return v0
    :cond_0
    if (p1 != 0) {
//       if-nez p1, :cond_1
    }
    v0 = p0.isEmpty();
    if (v0 != 0) {
//       if-nez v0, :cond_1
    }
    v0 = p0.get(v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;
    v0 = v0.getType();
    if (v0 == v2) {
//       if-eq v0, v2, :cond_1
    }
    v0 = v2;
    goto :goto_0
    :cond_1
    if (p1 <= 0) {
//       if-lez p1, :cond_2
    }
    v0 = p0.size();
    v3 = 0x5;
    if (v0 < v3) {
//       if-lt v0, v3, :cond_2
    }
    v0 = p0.get(v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;
    v0 = v0.getType();
    if (v0 != v2) {
//       if-ne v0, v2, :cond_2
    }
    v0 = p0.get(v4);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;
    v0 = v0.getType();
    if (v0 == v2) {
//       if-eq v0, v2, :cond_2
    }
    v0 = v2;
    goto :goto_0
    :cond_2
    if (p1 <= 0) {
//       if-lez p1, :cond_3
    }
    v0 = p0.size();
    if (v0 < v4) {
//       if-lt v0, v4, :cond_3
    }
    v0 = p0.get(v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;
    v0 = v0.getType();
    if (v0 == v2) {
//       if-eq v0, v2, :cond_3
    }
    v0 = p0.get(v4);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;
    v0 = v0.getType();
    if (v0 == v2) {
//       if-eq v0, v2, :cond_3
    }
    v0 = v2;
    goto :goto_0
    :cond_3
    v0 = v1;
    goto :goto_0
.end method
.method private static b(Ljava/util/List;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookShelf;",
            ">;)I"
        }
    .end annotation
    .prologue
    v3 = 0x0;
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/model/TxtFileObject;->getTxtFiles()Ljava/util/List;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v1 = v0.isEmpty();
    if (v1 == 0) {
//       if-eqz v1, :cond_1
    }
    :cond_0
    :goto_0
    return v3
    :cond_1
    v1 = new ArrayList();
    v1.<init>();
    v4 = new ArrayList();
    v4.<init>();
    v2 = v0.iterator();
    :goto_1
    v0 = v2.hasNext();
    if (v0 == 0) {
//       if-eqz v0, :cond_3
    }
    v0 = v2.next();
    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookFile;
    v5 = new BookShelf();
    v5.<init>();
    v5.setTxt(v0);
    v0 = v0.isTop();
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    v4.add(v5);
    goto :goto_1
    :cond_2
    v1.add(v5);
    goto :goto_1
    :cond_3
    v5 = v1.iterator();
    :cond_4
    :goto_2
    v0 = v5.hasNext();
    if (v0 == 0) {
//       if-eqz v0, :cond_8
    }
    v0 = v5.next();
    v1 = v0;
    check-cast v1, Lcom/ushaqi/zhuishushenqi/model/BookShelf;
    v0 = v1.getTxt();
    v6 = v0.getUpdated();
    if (v6 != 0) {
//       if-nez v6, :cond_5
    }
    p0.add(v1);
    goto :goto_2
    :cond_5
    v2 = v3;
    :goto_3
    v0 = p0.size();
    if (v2 >= v0) {
//       if-ge v2, v0, :cond_b
    }
    v0 = p0.get(v2);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;
    v7 = v0.getBookRecord();
    if (v7 == 0) {
//       if-eqz v7, :cond_7
    }
    v8 = v7.isTop();
    if (v8 != 0) {
//       if-nez v8, :cond_7
    }
    v8 = v0.getType();
    if (v8 == 0) {
//       if-eqz v8, :cond_6
    }
    v0 = v0.getType();
    v8 = 0x2;
    if (v0 != v8) {
//       if-ne v0, v8, :cond_7
    }
    :cond_6
    v8 = v6.getTime();
    v0 = v7.getUpdated();
    v10 = v0.getTime();
    cmp-long v0, v8, v10
    if (v0 <= 0) {
//       if-lez v0, :cond_7
    }
    p0.add(v2, v1);
    v0 = 0x1;
    :goto_4
    if (v0 != 0) {
//       if-nez v0, :cond_4
    }
    p0.add(v1);
    goto :goto_2
    :cond_7
    v0 = v2 + 0x1;
    v2 = v0;
    goto :goto_3
    :cond_8
    v1 = p0.iterator();
    :cond_9
    :goto_5
    v0 = v1.hasNext();
    if (v0 == 0) {
//       if-eqz v0, :cond_a
    }
    v0 = v1.next();
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;
    v2 = v0.getType();
    if (v2 != 0) {
//       if-nez v2, :cond_9
    }
    v0 = v0.isTop();
    if (v0 == 0) {
//       if-eqz v0, :cond_a
    }
    v3 = v3 + 0x1;
    goto :goto_5
    :cond_a
    p0.addAll(v3, v4);
    v3 = p0.size();
    goto/16 :goto_0
    :cond_b
    v0 = v3;
    goto :goto_4
.end method
.method public static b()Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;
    .locals 1
    .prologue
    v0 = new HomeShelfFragment();
    v0.<init>();
    return v0;
.end method
.method private b(I)V
    .locals 3
    .prologue
    v2 = 0x8;
    v1 = 0x0;
    packed-switch p1, :pswitch_data_0
    :goto_0
    :pswitch_0
    return;
    :pswitch_1
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->f;
    v0.setVisibility(v2);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e;
    v0.setVisibility(v1);
    goto :goto_0
    :pswitch_2
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->f;
    v0.setVisibility(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e;
    v0.setVisibility(v2);
    goto :goto_0
    nop
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)V
    .locals 1
    .prologue
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/as;->c()Z
    move-result v0
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/as;->h()V
    :goto_0
    return;
    :cond_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->u;
    v0.d();
    goto :goto_0
.end method
.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;I)V
    .locals 1
    .prologue
    v0 = 0x3;
    p0.b(v0);
    return;
.end method
.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ushaqi/zhuishushenqi/db/AudioRecord;)V
    .locals 4
    .prologue
    v0 = new Intent();
    v1 = p0.getActivity();
    v2 = Lcom/ushaqi/zhuishushenqi/ui/AudiobookInfoActivity;;
    v0.<init>(v1, v2);
    v1 = "ALBUM_ID";
    v2 = p1.getBookId();
    v2 = Ljava/lang/Long.parseLong(v2);
    v0.putExtra(v1, v2, v3);
    p0.startActivity(v0);
    return;
.end method
.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;)V
    .locals 5
    .prologue
    v4 = 0x1;
    if (p1 == 0) {
//       if-eqz p1, :cond_2
    }
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v0
    v2 = p0.getActivity();
    v3 = "FeedUpdateTime";
    Lcom/arcsoft/hpay100/a/a.d(v2, v3, v0, v1);
    p1.setFeeding(v4);
    v0 = p1.getChapterCount();
    p1.setChapterCountAtFeed(v0);
    v0 = new Date();
    v0.<init>();
    v0 = v0.getTime();
    p1.setLastActionTime(v0, v1);
    p1.save();
    p0.a(p1, v4);
    v0 = p0.getActivity();
    v1 = "feed_intro_dialog";
    v0 = Lcom/arcsoft/hpay100/a/a.a(v0, v1, v4);
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    v0 = p0.getActivity();
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v0 = v0.getSupportFragmentManager();
    v1 = v0.beginTransaction();
    v2 = "dialog_feed_intro";
    v0 = v0.findFragmentByTag(v2);
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v1.remove(v0);
    :cond_0
    v0 = new DialogUtil$FeedIntroDialog();
    v0.<init>();
    v2 = "dialog_feed_intro";
    v0.show(v1, v2);
    :cond_1
    v0 = p0.getActivity();
    v1 = "feed_intro_dialog";
    v2 = 0x0;
    Lcom/arcsoft/hpay100/a/a.b(v0, v1, v2);
    :cond_2
    return;
.end method
.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ushaqi/zhuishushenqi/model/BookShelf;)V
    .locals 4
    .prologue
    v0 = 0x1;
    v1 = 0x0;
    v2 = p1.getTxt();
    if (v2 == 0) {
//       if-eqz v2, :cond_2
    }
    v2 = p1.getTxt();
    v3 = v2.isTop();
    if (v3 != 0) {
//       if-nez v3, :cond_1
    }
    :goto_0
    v2.setTop(v0);
    v2.save();
    :cond_0
    :goto_1
    p0.k();
    return;
    :cond_1
    v0 = v1;
    goto :goto_0
    :cond_2
    v2 = p1.getBookRecord();
    if (v2 == 0) {
//       if-eqz v2, :cond_4
    }
    v2 = p1.getBookRecord();
    v3 = v2.isTop();
    if (v3 != 0) {
//       if-nez v3, :cond_3
    }
    :goto_2
    v2.setTop(v0);
    v2.save();
    goto :goto_1
    :cond_3
    v0 = v1;
    goto :goto_2
    :cond_4
    v2 = p1.getAlbum();
    if (v2 == 0) {
//       if-eqz v2, :cond_0
    }
    v2 = p1.getAlbum();
    v3 = v2.isTop();
    if (v3 != 0) {
//       if-nez v3, :cond_5
    }
    :goto_3
    v2.setTop(v0);
    v2.save();
    goto :goto_1
    :cond_5
    v0 = v1;
    goto :goto_3
.end method
.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;)V
    .locals 5
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->j;
    v0 = v0.f();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = v0.isEmpty();
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    :cond_0
    :goto_0
    return;
    :cond_1
    v0 = p0.getActivity();
    v0 = Landroid/support/design/widget/am.r(v0);
    if (v0 != 0) {
//       if-nez v0, :cond_3
    }
    if (p1 == 0) {
//       if-eqz p1, :cond_3
    }
    v0 = p1.Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;->postLink;
    if (v0 == 0) {
//       if-eqz v0, :cond_3
    }
    v0 = p1.Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;->postLink;
    v1 = "link";
    v0 = v0.startsWith(v1);
    if (v0 != 0) {
//       if-nez v0, :cond_2
    }
    v0 = p1.Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;->postLink;
    v1 = "game";
    v0 = v0.startsWith(v1);
    if (v0 == 0) {
//       if-eqz v0, :cond_3
    }
    :cond_2
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->g;
    v0.removeHeaderView(v1);
    goto :goto_0
    :cond_3
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->g;
    v0.removeHeaderView(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->g;
    v0.addHeaderView(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->g;
    v1 = 0x0;
    v0.setVisibility(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->g;
    v1 = 0x7f0c0048;
    v0 = v0.findViewById(v1);
    check-cast v0, Landroid/widget/TextView;
    v1 = new a();
    v1.<init>();
    v1 = p1.Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;->postLink;
    v1 = Lcom/ushaqi/zhuishushenqi/util/a/a.a(v1);
    v2 = v1.getLabel();
    v0.setText(v2);
    v2 = p1.Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;->highlight;
    if (v2 == 0) {
//       if-eqz v2, :cond_4
    }
    v2 = p0.getActivity();
    v2 = v2.getResources();
    v3 = 0x7f0b00c2;
    v2 = v2.getColor(v3);
    v0.setTextColor(v2);
    :goto_1
    v2 = new UmengGameTracer();
    v3 = p0.getActivity();
    v4 = Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;->Notification;
    v2.<init>(v3, v4);
    v3 = p1.Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;->_id;
    v2.a(v3);
    v2 = new w();
    v2.<init>(p0, p1, v1);
    v0.setOnClickListener(v2);
    goto/16 :goto_0
    :cond_4
    v2 = p0.getActivity();
    v2 = v2.getResources();
    v3 = 0x7f0b00c3;
    v2 = v2.getColor(v3);
    v0.setTextColor(v2);
    goto :goto_1
.end method
.method private b(Ljava/lang/String;)V
    .locals 1
    .prologue
    v0 = new v();
    v0.<init>(p0, p1);
    v0.start();
    return;
.end method
.method private static b(Ljava/util/List;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookShelf;",
            ">;I)Z"
        }
    .end annotation
    .prologue
    v4 = 0x4;
    v1 = 0x0;
    v2 = 0x1;
    v0 = p0.size();
    if (p1 < v0) {
//       if-lt p1, v0, :cond_0
    }
    v0 = v1;
    :goto_0
    return v0
    :cond_0
    if (p1 != 0) {
//       if-nez p1, :cond_1
    }
    v0 = p0.isEmpty();
    if (v0 != 0) {
//       if-nez v0, :cond_1
    }
    v0 = p0.get(v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;
    v0 = v0.getType();
    if (v0 != v2) {
//       if-ne v0, v2, :cond_1
    }
    v0 = v2;
    goto :goto_0
    :cond_1
    if (p1 <= 0) {
//       if-lez p1, :cond_2
    }
    v0 = p0.size();
    v3 = 0x5;
    if (v0 < v3) {
//       if-lt v0, v3, :cond_2
    }
    v0 = p0.get(v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;
    v0 = v0.getType();
    if (v0 != v2) {
//       if-ne v0, v2, :cond_2
    }
    v0 = p0.get(v4);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;
    v0 = v0.getType();
    if (v0 != v2) {
//       if-ne v0, v2, :cond_2
    }
    v0 = v2;
    goto :goto_0
    :cond_2
    if (p1 <= 0) {
//       if-lez p1, :cond_3
    }
    v0 = p0.size();
    if (v0 < v4) {
//       if-lt v0, v4, :cond_3
    }
    v0 = p0.get(v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;
    v0 = v0.getType();
    if (v0 == v2) {
//       if-eq v0, v2, :cond_3
    }
    v0 = p0.get(v4);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;
    v0 = v0.getType();
    if (v0 != v2) {
//       if-ne v0, v2, :cond_3
    }
    v0 = v2;
    goto :goto_0
    :cond_3
    v0 = v1;
    goto :goto_0
.end method
.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)V
    .locals 6
    .prologue
    v4 = 0x0;
    v0 = new Intent();
    v1 = p0.getActivity();
    v2 = Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;;
    v0.<init>(v1, v2);
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->r;
    if (v1 == 0) {
//       if-eqz v1, :cond_1
    }
    v1 = "ALBUM_ID";
    v2 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->r;
    v2 = v2.getId();
    v0.putExtra(v1, v2, v3);
    v1 = "INDEX_OF_PLAYLIST";
    v2 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->s;
    v0.putExtra(v1, v2);
    v1 = p0.getActivity();
    v2 = "album_id";
    v3 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->r;
    v4 = v3.getId();
    Lcom/arcsoft/hpay100/a/a.b(v1, v2, v4, v5);
    v1 = p0.getActivity();
    v2 = "index_of_playlist";
    v3 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->s;
    Lcom/arcsoft/hpay100/a/a.b(v1, v2, v3);
    :goto_0
    p0.startActivity(v0);
    :cond_0
    return;
    :cond_1
    v1 = p0.getActivity();
    v2 = "album_id";
    v2 = Lcom/arcsoft/hpay100/a/a.a(v1, v2, v4, v5);
    cmp-long v1, v2, v4
    if (v1 == 0) {
//       if-eqz v1, :cond_0
    }
    v1 = p0.getActivity();
    v4 = "index_of_playlist";
    v5 = 0x1;
    v1 = Lcom/arcsoft/hpay100/a/a.a(v1, v4, v5);
    v4 = "ALBUM_ID";
    v0.putExtra(v4, v2, v3);
    v2 = "INDEX_OF_PLAYLIST";
    v0.putExtra(v2, v1);
    goto :goto_0
.end method
.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;)V
    .locals 2
    .prologue
    v0 = new a();
    v1 = p0.getActivity();
    v0.<init>(v1);
    v0.a(p1);
    return;
.end method
.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;Lcom/ushaqi/zhuishushenqi/model/BookShelf;)V
    .locals 5
    .prologue
    v4 = 0x0;
    v1 = 0x0;
    v0 = p0.getActivity();
    v0 = v0.getLayoutInflater();
    v2 = 0x7f030154;
    v2 = v0.inflate(v2, v4, v1);
    v0 = 0x7f0c0455;
    v0 = v2.findViewById(v0);
    check-cast v0, Landroid/widget/CheckBox;
    v3 = p1.getType();
    if (v3 != 0) {
//       if-nez v3, :cond_0
    }
    :goto_0
    v0.setVisibility(v1);
    v1 = new h();
    v3 = p0.getActivity();
    v1.<init>(v3);
    v1 = v1.a(v2);
    v2 = "\u786e\u5b9a";
    v3 = new s();
    v3.<init>(p0, p1, v0);
    v0 = v1.a(v2, v3);
    v1 = "\u53d6\u6d88";
    v0 = v0.b(v1, v4);
    v0 = v0.a();
    v0.show();
    return;
    :cond_0
    v1 = 0x8;
    goto :goto_0
.end method
.method private c(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookShelf;",
            ">;I)V"
        }
    .end annotation
    .prologue
    if (p2 != 0) {
//       if-nez p2, :cond_2
    }
    v0 = "top";
    v1 = v0;
    :goto_0
    if (p2 != 0) {
//       if-nez p2, :cond_3
    }
    v0 = "rate_zssq_advert_bookshelf_top";
    :goto_1
    v2 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/c;->a()Lcom/ushaqi/zhuishushenqi/util/c;
    v2 = v2.a(v1);
    if (v2 == 0) {
//       if-eqz v2, :cond_4
    }
    v3 = p0.getActivity();
    v3 = Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment.a(v3, p2);
    if (v3 == 0) {
//       if-eqz v3, :cond_4
    }
    v3 = p0.getActivity();
    v0 = Lcom/arcsoft/hpay100/a/a.w(v3, v0);
    if (v0 == 0) {
//       if-eqz v0, :cond_4
    }
    v0 = p0.getActivity();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = new UmengGameTracer();
    v1 = p0.getActivity();
    v3 = Lcom/ushaqi/zhuishushenqi/util/UmengGameTracer$From;->Bookshelf;
    v0.<init>(v1, v3);
    v1 = v2.get_id();
    v0.a(v1);
    :cond_0
    v0 = "promotion";
    v2.setType(v0);
    p0.a(p1, p2, v2);
    :cond_1
    :goto_2
    return;
    :cond_2
    v0 = "bookshelf";
    v1 = v0;
    goto :goto_0
    :cond_3
    v0 = "rate_zssq_advert_bookshelf_five";
    goto :goto_1
    :cond_4
    v0 = p0.getActivity();
    v0 = Lcom/arcsoft/hpay100/a/a.A(v0);
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v0 = p0.getActivity();
    v0 = Lcom/arcsoft/hpay100/a/a.t(v0);
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    p0.getActivity();
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/adutil/k;->c()Z
    move-result v0
    if (v0 != 0) {
//       if-nez v0, :cond_5
    }
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/adutil/k;->b()Z
    move-result v0
    if (v0 == 0) {
//       if-eqz v0, :cond_6
    }
    :cond_5
    v0 = 0x1;
    :goto_3
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v0 = p0.getActivity();
    v0 = Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment.a(v0, p2);
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v0 = new n();
    v0.<init>();
    v2 = p0.getActivity();
    v0.a(v2, v1);
    goto :goto_2
    :cond_6
    v0 = 0x0;
    goto :goto_3
.end method
.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)Lcom/ushaqi/zhuishushenqi/util/as;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->u;
    return v0;
.end method
.method static synthetic e(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)V
    .locals 2
    .prologue
    v1 = 0x0;
    v0 = p0.getActivity();
    v0 = Landroid/support/design/widget/am.q(v0);
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = new H();
    v0.<init>(p0, v1);
    new-array v1, v1, [Ljava/lang/Void;
    v0.b(v1);
    :cond_0
    return;
.end method
.method static synthetic f()Ljava/lang/String;
    .locals 1
    .prologue
    v0 = Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a;
    return v0;
.end method
.method static synthetic f(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)V
    .locals 4
    .prologue
    v0 = 0x0;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->b;
    if (v1 != 0) {
//       if-nez v1, :cond_0
    }
    p0.k();
    :cond_0
    v1 = new K();
    v1.<init>(p0, v0);
    new-array v2, v0, [Ljava/lang/Void;
    v1.b(v2);
    v1 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->findAll()Ljava/util/List;
    v1 = v1.size();
    if (v1 <= 0) {
//       if-lez v1, :cond_2
    }
    v2 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->findAll()Ljava/util/List;
    v3 = new StringBuilder();
    v3.<init>();
    v1 = v0;
    :goto_0
    v0 = v2.size();
    if (v1 >= v0) {
//       if-ge v1, v0, :cond_1
    }
    v0 = v2.get(v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;
    v0 = v0.getBookId();
    v3.append(v0);
    v0 = ",";
    v3.append(v0);
    v0 = v1 + 0x1;
    v1 = v0;
    goto :goto_0
    :cond_1
    v0 = v3.length();
    v0 = v0 + -0x1;
    v3.deleteCharAt(v0);
    v0 = new HashMap();
    v0.<init>();
    v1 = "ids";
    v2 = v3.toString();
    v0.put(v1, v2);
    v1 = new o();
    v1.<init>(p0);
    Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest.getBatch(v0, v1);
    :cond_2
    return;
.end method
.method private g()V
    .locals 2
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->l;
    v1 = 0x0;
    v0.setVisibility(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->h;
    v0.removeFooterView(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->h;
    v0.addFooterView(v1);
    return;
.end method
.method static synthetic g(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)V
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->d;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->d;
    v0.n();
    :cond_0
    return;
.end method
.method private h()V
    .locals 1
    .prologue
    p0.g();
    v0 = 0x1;
    p0.a(v0);
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/as;->e()Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;
    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;
    p0.a(v0);
    return;
.end method
.method static synthetic h(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)V
    .locals 0
    .prologue
    p0.i();
    return;
.end method
.method static synthetic i(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)I
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->v;
    return v0
.end method
.method private i()V
    .locals 8
    .prologue
    v7 = 0x1;
    v6 = 0x0;
    v0 = new Date();
    v0.<init>();
    v0 = v0.getTime();
    v2 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->B;
    v2 = v0 - v2;
    v4 = 0x1f4;
    cmp-long v2, v2, v4
    if (v2 >= 0) {
//       if-gez v2, :cond_0
    }
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->B = v0;
    :goto_0
    return;
    :cond_0
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->B = v0;
    v0 = 0x0;
    :try_start_0
    p0.j();
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    move-result-object v0
    :goto_1
    if (v0 == 0) {
//       if-eqz v0, :cond_6
    }
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->j;
    v1.a(v0);
    if (v0 == 0) {
//       if-eqz v0, :cond_3
    }
    v0 = v0.isEmpty();
    if (v0 != 0) {
//       if-nez v0, :cond_3
    }
    p0.b(v7);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->b;
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->d;
    v0.setRefreshing();
    :cond_1
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->b = v6;
    v0 = new J();
    v0.<init>(p0, v6);
    new-array v1, v6, [Ljava/lang/Void;
    v0.b(v1);
    goto :goto_0
    :catch_0
    move-exception v1
    v2 = v1.getMessage();
    if (v2 == 0) {
//       if-eqz v2, :cond_2
    }
    v2 = v1.getMessage();
    v3 = "not attached to Activity";
    v2 = v2.contains(v3);
    if (v2 == 0) {
//       if-eqz v2, :cond_2
    }
    v1 = p0.getActivity();
    v2 = "zhuishu_catch_exception";
    v3 = "HomeShelfFragment_loadShelf:Fragment HomeShelfFragment not attached to Activity";
    Lcom/umeng/a/b.a(v1, v2, v3);
    goto :goto_1
    :cond_2
    v2 = p0.getActivity();
    v3 = "zhuishu_catch_exception";
    v4 = new StringBuilder();
    v5 = "HomeShelfFragment_loadShelf:";
    v4.<init>(v5);
    v1 = v1.getMessage();
    v1 = v4.append(v1);
    v1 = v1.toString();
    Lcom/umeng/a/b.a(v2, v3, v1);
    goto :goto_1
    :cond_3
    v0 = p0.getActivity();
    v0 = Landroid/support/design/widget/am.p(v0);
    if (v0 == 0) {
//       if-eqz v0, :cond_5
    }
    invoke-static {}, Landroid/support/design/widget/am;->g()Z
    move-result v0
    if (v0 != 0) {
//       if-nez v0, :cond_4
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->A;
    if (v0 != 0) {
//       if-nez v0, :cond_4
    }
    v0 = p0.getActivity();
    Lcom/arcsoft/hpay100/a/a.a(v0);
    goto/16 :goto_0
    :cond_4
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->z = v7;
    :cond_5
    v0 = 0x3;
    p0.b(v0);
    goto/16 :goto_0
    :cond_6
    v0 = p0.getActivity();
    v1 = "\u8f7d\u5165\u4e66\u67b6\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5";
    Lcom/ushaqi/zhuishushenqi/util/e.a(v0, v1);
    goto/16 :goto_0
.end method
.method static synthetic j(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)Landroid/widget/ListView;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e;
    return v0;
.end method
.method private j()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookShelf;",
            ">;"
        }
    .end annotation
    .prologue
    v6 = new ArrayList();
    v6.<init>();
    v0 = p0.getActivity();
    v1 = "key_shelf_sort";
    v2 = 0x1;
    v7 = Lcom/arcsoft/hpay100/a/a.a(v0, v1, v2);
    if (v7 != 0) {
//       if-nez v7, :cond_4
    }
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getAllWithTopNoFeed()Ljava/util/List;
    v1 = v0;
    :goto_0
    v8 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getAllFeeding()Ljava/util/List;
    v0 = v8.isEmpty();
    if (v0 != 0) {
//       if-nez v0, :cond_5
    }
    v0 = 0x1;
    v5 = v0;
    :goto_1
    v0 = 0x0;
    v2 = 0x0;
    if (v5 == 0) {
//       if-eqz v5, :cond_0
    }
    v2 = p0.getActivity();
    v3 = "FeedUpdateTime";
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v10
    v2 = Lcom/arcsoft/hpay100/a/a.c(v2, v3, v10, v11);
    :cond_0
    v9 = v1.iterator();
    v4 = v0;
    :goto_2
    v0 = v9.hasNext();
    if (v0 == 0) {
//       if-eqz v0, :cond_6
    }
    v0 = v9.next();
    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;
    v10 = v0.getUpdated();
    v10 = v10.getTime();
    if (v4 != 0) {
//       if-nez v4, :cond_1
    }
    if (v5 == 0) {
//       if-eqz v5, :cond_1
    }
    cmp-long v10, v2, v10
    if (v10 < 0) {
//       if-ltz v10, :cond_1
    }
    p0.a(v6, v8);
    v4 = 0x1;
    :cond_1
    v10 = new BookShelf();
    v10.<init>();
    v10.setBookRecord(v0);
    v11 = v0.Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->readTime;
    if (v11 == 0) {
//       if-eqz v11, :cond_2
    }
    v11 = v0.Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->readTime;
    v12 = v11.getTime();
    v10.setLastRead(v12, v13);
    :cond_2
    v11 = v0.getUpdated();
    if (v11 == 0) {
//       if-eqz v11, :cond_3
    }
    v0 = v0.getUpdated();
    v12 = v0.getTime();
    v10.setLastUpdate(v12, v13);
    :cond_3
    v6.add(v10);
    goto :goto_2
    :cond_4
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getAllWithTopNoFeedByRead()Ljava/util/List;
    v1 = v0;
    goto :goto_0
    :cond_5
    v0 = 0x0;
    v5 = v0;
    goto :goto_1
    :cond_6
    v0 = Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment.b(v6);
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->v = v0;
    if (v4 != 0) {
//       if-nez v4, :cond_7
    }
    if (v5 == 0) {
//       if-eqz v5, :cond_7
    }
    p0.a(v6, v8);
    :cond_7
    v0 = p0.getActivity();
    v2 = "delete_audio_on_shelf";
    v0 = Lcom/umeng/a/b.b(v0, v2);
    if (v0 == 0) {
//       if-eqz v0, :cond_8
    }
    v2 = "1";
    v0 = v2.equals(v0);
    if (v0 == 0) {
//       if-eqz v0, :cond_8
    }
    v0 = 0x1;
    v2 = v0;
    :goto_3
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;->findAll()Ljava/util/List;
    v3 = v0.iterator();
    :goto_4
    v0 = v3.hasNext();
    if (v0 == 0) {
//       if-eqz v0, :cond_b
    }
    v0 = v3.next();
    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/AudioRecord;
    if (v2 == 0) {
//       if-eqz v2, :cond_9
    }
    v0.delete();
    p0.k();
    goto :goto_4
    :cond_8
    v0 = 0x0;
    v2 = v0;
    goto :goto_3
    :cond_9
    v4 = new BookShelf();
    v4.<init>();
    v4.setAlbum(v0);
    v10 = v0.getLastRead();
    v4.setLastRead(v10, v11);
    v10 = v0.getLastUpdate();
    v4.setLastUpdate(v10, v11);
    v0 = v4.isTop();
    if (v0 == 0) {
//       if-eqz v0, :cond_a
    }
    v0 = 0x0;
    v6.add(v0, v4);
    goto :goto_4
    :cond_a
    v6.add(v4);
    goto :goto_4
    :cond_b
    :try_start_0
    v0 = new G();
    v0.<init>(p0, v7);
    Ljava/util/Collections.sort(v6, v0);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    :goto_5
    :try_start_1
    v0 = p0.getActivity();
    v2 = "unsync_bookrecord_first";
    v3 = 0x0;
    v0 = Lcom/arcsoft/hpay100/a/a.a(v0, v2, v3);
    if (v0 != 0) {
//       if-nez v0, :cond_e
    }
    v0 = v1.size();
    new-array v3, v0, [Ljava/lang/String;
    v0 = 0x0;
    v2 = v0;
    :goto_6
    v0 = v1.size();
    if (v2 >= v0) {
//       if-ge v2, v0, :cond_c
    }
    v0 = v1.get(v2);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;
    v0 = v0.getBookId();
    v3[v2] = v0;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    v0 = v2 + 0x1;
    v2 = v0;
    goto :goto_6
    :catch_0
    move-exception v0
    v2 = p0.getActivity();
    v3 = "zhuishu_catch_exception";
    v4 = new StringBuilder();
    v5 = "HomeShelfFragment_createShelf:";
    v4.<init>(v5);
    v0 = v0.getMessage();
    v0 = v4.append(v0);
    v0 = v0.toString();
    Lcom/umeng/a/b.a(v2, v3, v0);
    goto :goto_5
    :cond_c
    :try_start_2
    Lcom/arcsoft/hpay100/a/a.a(v3);
    v0 = v8.size();
    new-array v2, v0, [Ljava/lang/String;
    v0 = 0x0;
    v1 = v0;
    :goto_7
    v0 = v8.size();
    if (v1 >= v0) {
//       if-ge v1, v0, :cond_d
    }
    v0 = v8.get(v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;
    v0 = v0.getBookId();
    v2[v1] = v0;
    v0 = v1 + 0x1;
    v1 = v0;
    goto :goto_7
    :cond_d
    Lcom/arcsoft/hpay100/a/a.b(v2);
    v0 = p0.getActivity();
    v1 = "unsync_bookrecord_first";
    v2 = 0x1;
    Lcom/arcsoft/hpay100/a/a.b(v0, v1, v2);
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    :cond_e
    :goto_8
    p0.a(v6);
    return v6;
    :catch_1
    move-exception v0
    v1 = p0.getActivity();
    v2 = "zhuishu_catch_exception";
    v3 = new StringBuilder();
    v4 = "HomeShelfFragment_createShelf:";
    v3.<init>(v4);
    v4 = v0.getMessage();
    v3 = v3.append(v4);
    v3 = v3.toString();
    Lcom/umeng/a/b.a(v1, v2, v3);
    v1 = v0.getMessage();
    v2 = "no such table: BookSyncRecord";
    v1 = v1.contains(v2);
    if (v1 == 0) {
//       if-eqz v1, :cond_e
    }
    :try_start_3
    v1 = new SQLiteUtils();
    v1.<init>();
    v1 = "CREATE TABLE IF NOT EXISTS BookSyncRecord (id integer primary key AutoIncrement,userId varchar(20),bookId varchar(20), type int,updated long);";
    Lcom/activeandroid/util/SQLiteUtils.execSql(v1);
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    goto :goto_8
    :catch_2
    move-exception v1
    v1 = p0.getActivity();
    v2 = "zhuishu_catch_exception";
    v3 = new StringBuilder();
    v4 = "HomeShelfFragment_createTableBookSyncRecord:";
    v3.<init>(v4);
    v0 = v0.getMessage();
    v0 = v3.append(v0);
    v0 = v0.toString();
    Lcom/umeng/a/b.a(v1, v2, v0);
    goto :goto_8
.end method
.method private k()V
    .locals 1
    .prologue
    v0 = p0.getActivity();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    p0.i();
    :cond_0
    return;
.end method
.method static synthetic k(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)V
    .locals 3
    .prologue
    v0 = new Intent();
    v1 = p0.getActivity();
    v2 = Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;;
    v0.<init>(v1, v2);
    p0.startActivity(v0);
    return;
.end method
.method static synthetic l(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)V
    .locals 0
    .prologue
    p0.k();
    return;
.end method
.method static synthetic m(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)Landroid/view/View;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->g;
    return v0;
.end method
.method static synthetic n(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->i;
    return v0;
.end method
.method static synthetic o(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)V
    .locals 0
    .prologue
    p0.h();
    return;
.end method
.method static synthetic p(Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;)Landroid/widget/TextView;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->o;
    return v0;
.end method
# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1
    .prologue
    v0 = "home_shelf";
    return v0;
.end method
.method public final c()Z
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->j;
    v0 = v0.a();
    return v0
.end method
.method public final d()V
    .locals 3
    .prologue
    v2 = 0x0;
    v0 = p0.getActivity();
    v1 = "home_shelf_bulk_operation";
    Lcom/umeng/a/b.a(v0, v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->r;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->l;
    v1 = 0x8;
    v0.setVisibility(v1);
    :cond_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->g;
    v0.removeHeaderView(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->w;
    v0.setVisibility(v2);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->h;
    v0.removeFooterView(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->h;
    v0.addFooterView(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->d;
    v0.setPullToRefreshEnabled(v2);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->d;
    v0.setPullToRefreshOverScrollEnabled(v2);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e;
    v1 = 0x0;
    v0.setOnItemLongClickListener(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->j;
    v0.b();
    return;
.end method
.method public final e()V
    .locals 3
    .prologue
    v2 = 0x1;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->r;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->l;
    v1 = 0x0;
    v0.setVisibility(v1);
    :cond_0
    v0 = p0.getActivity();
    v0 = Landroid/support/design/widget/am.r(v0);
    if (v0 != 0) {
//       if-nez v0, :cond_1
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->g;
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->i;
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->i;
    v0 = v0.Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;->postLink;
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->i;
    v0 = v0.Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;->postLink;
    v1 = "link";
    v0 = v0.startsWith(v1);
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->i;
    v0 = v0.Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;->postLink;
    v1 = "game";
    v0 = v0.startsWith(v1);
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    :cond_1
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->g;
    v0.removeHeaderView(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->g;
    v0.addHeaderView(v1);
    :cond_2
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->w;
    v1 = 0x8;
    v0.setVisibility(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->h;
    v0.removeFooterView(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->d;
    v0.setPullToRefreshEnabled(v2);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->d;
    v0.setPullToRefreshOverScrollEnabled(v2);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->D;
    v0.setOnItemLongClickListener(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->j;
    v0.c();
    return;
.end method
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .prologue
    Lcom/ushaqi/zhuishushenqi/ui/home/HomeFragment.onActivityCreated(p0, p1);
    return;
.end method
.method public onAudioBookExitEvent(Lcom/ushaqi/zhuishushenqi/event/b;)V
    .locals 2
    .annotation runtime Lcom/squareup/a/l;
    .end annotation
    .prologue
    v0 = 0x0;
    p0.a(v0);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->l;
    v1 = 0x8;
    v0.setVisibility(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->h;
    v0.removeFooterView(v1);
    v0 = 0x0;
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->r = v0;
    return;
.end method
.method public onBookAdded(Lcom/ushaqi/zhuishushenqi/event/c;)V
    .locals 6
    .annotation runtime Lcom/squareup/a/l;
    .end annotation
    .prologue
    v0 = p1.a();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    p0.k();
    :cond_0
    v0 = p1.b();
    Lcom/arcsoft/hpay100/a/a.r(v0);
    v0 = p0.getActivity();
    v1 = p1.b();
    v5 = new HashMap();
    v5.<init>();
    v2 = "uid";
    v3 = Lcom/ushaqi/zhuishushenqi/util/e.c(v0);
    v5.put(v2, v3);
    v2 = 0x0;
    v4 = 0x1;
    Lcom/a/a/a.a(v0 .. v5);
    return;
.end method
.method public onBookRead(Lcom/ushaqi/zhuishushenqi/event/g;)V
    .locals 0
    .annotation runtime Lcom/squareup/a/l;
    .end annotation
    .prologue
    p0.k();
    return;
.end method
.method public onBookRemoved(Lcom/ushaqi/zhuishushenqi/event/h;)V
    .locals 1
    .annotation runtime Lcom/squareup/a/l;
    .end annotation
    .prologue
    v0 = p1.b();
    p0.a(v0);
    return;
.end method
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .prologue
    Lcom/ushaqi/zhuishushenqi/ui/home/HomeFragment.onCreate(p0, p1);
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;
    v0.a(p0);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->q;
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/as;->b()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->q = v0;
    :cond_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->E;
    Lcom/ushaqi/zhuishushenqi/util/as.a(v0);
    return;
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .prologue
    v3 = 0x0;
    v0 = Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a;
    v1 = "HomeShelfFragment onCreateView";
    Landroid/util/Log.i(v0, v1);
    v0 = p0.getActivity();
    v0 = v0.getResources();
    v0 = v0.getDisplayMetrics();
    v1 = 0x42700000    # 60.0f;
    v0 = v0.Landroid/util/DisplayMetrics;->densityDpi;
    int-to-float v0, v0
    v2 = 0x43200000    # 160.0f;
    v0 /= v2;
    v0 *= v1;
    v0 = 0x7f0300ad;
    v0 = p1.inflate(v0, p2, v3);
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->c = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->c;
    v1 = 0x7f0c0240;
    v0 = v0.findViewById(v1);
    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->d = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->d;
    v0 = v0.h();
    check-cast v0, Landroid/widget/ListView;
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->d;
    v0.setOnScrollListener(p0);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->c;
    v1 = 0x7f0c01f1;
    v0 = v0.findViewById(v1);
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->f = v0;
    v0 = p0.getActivity();
    v0 = Landroid/view/LayoutInflater.from(v0);
    v1 = 0x7f0300d8;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e;
    v0 = v0.inflate(v1, v2, v3);
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->h = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->c;
    v1 = 0x7f0c01f2;
    v0 = v0.findViewById(v1);
    v1 = new n();
    v1.<init>(p0);
    v0.setOnClickListener(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->c;
    v1 = 0x7f0c0242;
    v0 = v0.findViewById(v1);
    check-cast v0, Landroid/widget/RelativeLayout;
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->w = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->w;
    v1 = new y();
    v1.<init>(p0);
    v0.setOnTouchListener(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->w;
    v1 = 0x7f0c002b;
    v0 = v0.findViewById(v1);
    check-cast v0, Landroid/widget/Button;
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->x = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->w;
    v1 = 0x7f0c0466;
    v0 = v0.findViewById(v1);
    check-cast v0, Landroid/widget/Button;
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->y = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->y;
    v1 = new z();
    v1.<init>(p0);
    v0.setOnClickListener(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->x;
    v1 = new A();
    v1.<init>(p0);
    v0.setOnClickListener(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->d;
    v1 = new E();
    v1.<init>(p0);
    v0.setOnRefreshListener(v1);
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->i()Z
    move-result v0
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e;
    v0.setFooterDividersEnabled(v3);
    :cond_0
    v0 = p0.getActivity();
    v0 = Landroid/view/LayoutInflater.from(v0);
    v1 = 0x7f03013a;
    v2 = 0x0;
    v0 = v0.inflate(v1, v2);
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e;
    v1.addFooterView(v0);
    v0 = p0.getActivity();
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e;
    Lcom/arcsoft/hpay100/a/a.a(v0, v1);
    v0 = p0.getActivity();
    v0 = Landroid/view/LayoutInflater.from(v0);
    v1 = 0x7f030080;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e;
    v0 = v0.inflate(v1, v2, v3);
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->g = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->g;
    v1 = 0x8;
    v0.setVisibility(v1);
    v0 = p0.getActivity();
    v0 = Landroid/support/design/widget/am.r(v0);
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->g;
    v0.addHeaderView(v1);
    :cond_1
    v0 = new HomeShelfAdapter();
    v1 = p0.getActivity();
    v0.<init>(v1);
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->j = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->j;
    v0.setAdapter(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->C;
    v0.setOnItemClickListener(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->D;
    v0.setOnItemLongClickListener(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->j;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->x;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->y;
    v0.a(v1, v2);
    p0.i();
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e;
    v0.getHeight();
    v0 = Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a;
    v1 = new StringBuilder();
    v1.<init>();
    v2 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e;
    v2 = v2.getHeight();
    v1 = v1.append(v2);
    v2 = " ,";
    v1 = v1.append(v2);
    v2 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e;
    v2 = v2.getMeasuredHeight();
    v1 = v1.append(v2);
    v1 = v1.toString();
    Landroid/util/Log.i(v0, v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->c;
    v1 = 0x7f0c0241;
    v0 = v0.findViewById(v1);
    check-cast v0, Landroid/widget/RelativeLayout;
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->l = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->l;
    v1 = 0x7f0c02e4;
    v0 = v0.findViewById(v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/CoverLoadingView;
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->m = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->l;
    v1 = 0x7f0c02e5;
    v0 = v0.findViewById(v1);
    check-cast v0, Landroid/widget/TextView;
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->n = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->l;
    v1 = 0x7f0c02e6;
    v0 = v0.findViewById(v1);
    check-cast v0, Landroid/widget/TextView;
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->o = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->l;
    v1 = 0x7f0c02e7;
    v0 = v0.findViewById(v1);
    check-cast v0, Landroid/widget/ImageView;
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->p = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->p;
    v1 = new B();
    v1.<init>(p0);
    v0.setOnClickListener(v1);
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/as;->c()Z
    move-result v0
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    p0.h();
    :cond_2
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->l;
    v1 = new C();
    v1.<init>(p0);
    v0.setOnClickListener(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->c;
    return v0;
.end method
.method public onDestroy()V
    .locals 1
    .prologue
    Lcom/ushaqi/zhuishushenqi/ui/home/HomeFragment.onDestroy(p0);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->E;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->E;
    Lcom/ushaqi/zhuishushenqi/util/as.b(v0);
    v0 = 0x0;
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->E = v0;
    :cond_0
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;
    v0.b(p0);
    return;
.end method
.method public onDownloadProgress(Lcom/ushaqi/zhuishushenqi/event/I;)V
    .locals 1
    .annotation runtime Lcom/squareup/a/l;
    .end annotation
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->k;
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->j;
    v0.notifyDataSetChanged();
    :cond_0
    return;
.end method
.method public onFeedAdded(Lcom/ushaqi/zhuishushenqi/event/l;)V
    .locals 2
    .annotation runtime Lcom/squareup/a/l;
    .end annotation
    .prologue
    v0 = p1.b();
    v1 = p1.a();
    p0.a(v0, v1);
    return;
.end method
.method public onFeedRemoved(Lcom/ushaqi/zhuishushenqi/event/n;)V
    .locals 1
    .annotation runtime Lcom/squareup/a/l;
    .end annotation
    .prologue
    p0.k();
    v0 = p1.b();
    Lcom/arcsoft/hpay100/a/a.r(v0);
    v0 = p1.b();
    Lcom/arcsoft/hpay100/a/a.x(v0);
    return;
.end method
.method public onFeedSettingChanged(Lcom/ushaqi/zhuishushenqi/event/m;)V
    .locals 1
    .annotation runtime Lcom/squareup/a/l;
    .end annotation
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->d;
    v0.setRefreshing();
    return;
.end method
.method public onFocusBookEvent(Lcom/ushaqi/zhuishushenqi/event/p;)V
    .locals 4
    .annotation runtime Lcom/squareup/a/l;
    .end annotation
    .prologue
    v0 = p1.a();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p1.b();
    v1 = 0x0;
    v0.setUpdateReaded(v1);
    v1 = new Date();
    v1.<init>();
    v2 = v1.getTime();
    v0.setLastRead(v2, v3);
    v0.save();
    :goto_0
    p0.i();
    return;
    :cond_0
    v0 = p1.b();
    v0 = v0.getBookId();
    Lcom/ushaqi/zhuishushenqi/db/AudioRecord.cancelFollow(v0);
    goto :goto_0
.end method
.method public onGenderIntroEvent(Lcom/ushaqi/zhuishushenqi/event/r;)V
    .locals 6
    .annotation runtime Lcom/squareup/a/l;
    .end annotation
    .prologue
    v5 = 0x0;
    v4 = 0x1;
    v0 = p1.a();
    v1 = Ljava/lang/System;->out;
    v2 = new StringBuilder();
    v3 = "type : ";
    v2.<init>(v3);
    v2 = v2.append(v0);
    v2 = v2.toString();
    v1.println(v2);
    if (v0 != 0) {
//       if-nez v0, :cond_1
    }
    v0 = 0x3;
    p0.b(v0);
    :cond_0
    :goto_0
    return;
    :cond_1
    if (v0 != v4) {
//       if-ne v0, v4, :cond_2
    }
    v0 = new I();
    v1 = p0.getActivity();
    v0.<init>(p0, v1);
    new-array v1, v4, [Ljava/lang/String;
    v2 = "male";
    v1[v5] = v2;
    v0.b(v1);
    goto :goto_0
    :cond_2
    v1 = 0x2;
    if (v0 != v1) {
//       if-ne v0, v1, :cond_0
    }
    v0 = new I();
    v1 = p0.getActivity();
    v0.<init>(p0, v1);
    new-array v1, v4, [Ljava/lang/String;
    v2 = "female";
    v1[v5] = v2;
    v0.b(v1);
    goto :goto_0
.end method
.method public onHideAdEvent(Lcom/ushaqi/zhuishushenqi/event/s;)V
    .locals 2
    .annotation runtime Lcom/squareup/a/l;
    .end annotation
    .prologue
    p0.k();
    v0 = p0.getActivity();
    v0 = Landroid/support/design/widget/am.r(v0);
    if (v0 != 0) {
//       if-nez v0, :cond_1
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->g;
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->i;
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->i;
    v0 = v0.Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;->postLink;
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->i;
    v0 = v0.Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;->postLink;
    v1 = "link";
    v0 = v0.startsWith(v1);
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->i;
    v0 = v0.Lcom/ushaqi/zhuishushenqi/model/ShelfMsg;->postLink;
    v1 = "game";
    v0 = v0.startsWith(v1);
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    :cond_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->e;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->g;
    v0.removeHeaderView(v1);
    :cond_1
    return;
.end method
.method public onPause()V
    .locals 1
    .prologue
    Lcom/ushaqi/zhuishushenqi/ui/home/HomeFragment.onPause(p0);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->j;
    v0 = v0.a();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    p0.e();
    :cond_0
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/c;->a()Lcom/ushaqi/zhuishushenqi/util/c;
    v0.c();
    return;
.end method
.method public onResume()V
    .locals 5
    .prologue
    v4 = 0x0;
    Lcom/ushaqi/zhuishushenqi/ui/home/HomeFragment.onResume(p0);
    v0 = p0.getActivity();
    v0 = Lcom/arcsoft/hpay100/a/a.A(v0);
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->j;
    v1 = v0.f();
    if (v1 == 0) {
//       if-eqz v1, :cond_0
    }
    v0 = v1.isEmpty();
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    :cond_0
    :goto_0
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->A = v4;
    return;
    :cond_1
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/c;->a()Lcom/ushaqi/zhuishushenqi/util/c;
    v2 = "top";
    v2 = v0.a(v2);
    if (v2 == 0) {
//       if-eqz v2, :cond_2
    }
    v0 = p0.getActivity();
    v0 = Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment.a(v0, v4);
    if (v0 != 0) {
//       if-nez v0, :cond_3
    }
    :cond_2
    v0 = p0.getActivity();
    v1 = 0x0;
    Lcom/arcsoft/hpay100/a/a.a(v0, v1);
    goto :goto_0
    :cond_3
    v0 = v1.get(v4);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;
    v3 = v0.getAdvert();
    if (v3 != 0) {
//       if-nez v3, :cond_5
    }
    p0.a(v1, v4, v2);
    :cond_4
    :goto_1
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->j;
    v0.notifyDataSetChanged();
    v0 = p0.getActivity();
    Lcom/arcsoft/hpay100/a/a.a(v0, v2);
    goto :goto_0
    :cond_5
    v1 = v0.getAdvert();
    v1 = v2.equals(v1);
    if (v1 != 0) {
//       if-nez v1, :cond_4
    }
    v1 = "shelf_top";
    v2.setPosition(v1);
    v0.setAdvert(v2);
    goto :goto_1
.end method
.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .prologue
    Lcom/ushaqi/zhuishushenqi/ui/home/HomeFragment.onSaveInstanceState(p0, p1);
    v0 = 0x1;
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->A = v0;
    return;
.end method
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .prologue
    return;
.end method
.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .prologue
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->k = p2;
    return;
.end method
.method public onShelfUpdated(Lcom/ushaqi/zhuishushenqi/event/A;)V
    .locals 1
    .annotation runtime Lcom/squareup/a/l;
    .end annotation
    .prologue
    v0 = p1.a();
    if (v0 != 0) {
//       if-nez v0, :cond_1
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->z;
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v0 = p0.getActivity();
    v0 = Landroid/support/design/widget/am.p(v0);
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->A;
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = p0.getActivity();
    Lcom/arcsoft/hpay100/a/a.a(v0);
    :cond_0
    :goto_0
    return;
    :cond_1
    p0.k();
    goto :goto_0
.end method
.method public onShowThirdAd(Lcom/ushaqi/zhuishushenqi/event/B;)V
    .locals 4
    .annotation runtime Lcom/squareup/a/l;
    .end annotation
    .prologue
    v0 = p0.getActivity();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.getActivity();
    v0 = v0.isFinishing();
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    :cond_0
    :goto_0
    return;
    :cond_1
    if (p1 == 0) {
//       if-eqz p1, :cond_0
    }
    v0 = p0.getActivity();
    v0 = Landroid/support/design/widget/am.q(v0);
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p1.b();
    v1 = "top";
    v0 = v0.equals(v1);
    if (v0 != 0) {
//       if-nez v0, :cond_2
    }
    v0 = p1.b();
    v1 = "bookshelf";
    v0 = v0.equals(v1);
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    :cond_2
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->j;
    v2 = v0.f();
    if (v2 == 0) {
//       if-eqz v2, :cond_0
    }
    v0 = v2.isEmpty();
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v3 = p1.a();
    if (v3 == 0) {
//       if-eqz v3, :cond_0
    }
    v0 = p1.b();
    v1 = "top";
    v0 = v0.equals(v1);
    if (v0 == 0) {
//       if-eqz v0, :cond_3
    }
    v0 = 0x0;
    :goto_1
    v1 = "promotion";
    v3.setType(v1);
    if (v0 != 0) {
//       if-nez v0, :cond_4
    }
    v1 = "shelf_top";
    :goto_2
    v3.setPosition(v1);
    v1 = Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment.a(v2, v0);
    if (v1 == 0) {
//       if-eqz v1, :cond_5
    }
    p0.a(v2, v0, v3);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->j;
    v0.notifyDataSetChanged();
    goto :goto_0
    :cond_3
    v0 = 0x4;
    goto :goto_1
    :cond_4
    v1 = "shelf_five";
    goto :goto_2
    :cond_5
    v1 = Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment.b(v2, v0);
    if (v1 == 0) {
//       if-eqz v1, :cond_0
    }
    v0 = v2.get(v0);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookShelf;
    v0.setAdvert(v3);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->j;
    v0.notifyDataSetChanged();
    goto :goto_0
.end method
.method public onUpdateAlbum(Lcom/ushaqi/zhuishushenqi/event/F;)V
    .locals 3
    .annotation runtime Lcom/squareup/a/l;
    .end annotation
    .prologue
    p0.i();
    v0 = Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->a;
    v1 = p1.toString();
    Landroid/util/Log.i(v0, v1);
    v0 = p1.a();
    v2 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->r;
    if (v2 != 0) {
//       if-nez v2, :cond_0
    }
    v2 = new Album();
    v2.<init>();
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->r = v2;
    :cond_0
    v2 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->r;
    v2.setId(v0, v1);
    v0 = p1.b();
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->s = v0;
    return;
.end method
.method public setUserVisibleHint(Z)V
    .locals 1
    .prologue
    Lcom/ushaqi/zhuishushenqi/ui/home/HomeFragment.setUserVisibleHint(p0, p1);
    if (p1 != 0) {
//       if-nez p1, :cond_1
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->j;
    v0 = v0.a();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    p0.e();
    :cond_0
    :goto_0
    return;
    :cond_1
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->j;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->j;
    v0 = v0.f();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->j;
    v0 = v0.f();
    p0.a(v0);
    goto :goto_0
.end method
